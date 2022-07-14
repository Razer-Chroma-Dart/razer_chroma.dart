import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:razer_chroma_rest_server/src/backend.dart';
import 'package:razer_chroma_rest_server/src/effects/api/effects.dart';
import 'package:razer_chroma_rest_server/src/errors/middleware/api_error.dart';
import 'package:razer_chroma_rest_server/src/errors/middleware/data.dart';
import 'package:razer_chroma_rest_server/src/initialization/api/session.dart';
import 'package:razer_chroma_rest_server/src/initialization/api/version.dart';
import 'package:razer_chroma_rest_server/src/keyboard/api/keyboard.dart';
import 'package:razer_chroma_rest_server/src/security/middleware/host_filter.dart';
import 'package:razer_chroma_rest_server/src/session.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';
import 'package:shelf_plus/shelf_plus.dart';

/// An instance of a Razer Chroma REST server.
///
/// See [start] and [stop] for usage instructions.
class RazerChromaRestServer = BaseRazerChromaRestServer
    with VersionApi, SessionApi, EffectsApi, KeyboardApi;

class BaseRazerChromaRestServer {
  final RazerChromaRestServerBackend backend;
  late final _initializationRouter = buildInitializationRouter();
  HttpServer? _initializationServer;
  late final _sessionRouter = buildSessionRouter();
  Session? _session;

  /// Constructs an instance using the provided [backend].
  BaseRazerChromaRestServer(this.backend);

  /// `true` if the server is running.
  bool get running => _initializationServer != null;

  /// `true` if the server has a client session open.
  bool get hasSession => _session != null;

  /// An object representing the current session.
  ///
  /// When the session changes, so does this object.
  /// Identity comparisons can be made to distinguish session objects.
  /// Session objects can be used with [Expando]s.
  Object get session => internalSession;

  /// The current [Session].
  ///
  /// This getter should not be used outside the package; use [session] for
  /// that.
  @protected
  Session get internalSession {
    assert(hasSession, 'No session exists!');
    return _session!;
  }

  /// The details of the currently connected client.
  ClientDetails? get connectedClientDetails => _session?.clientDetails;

  /// Starts the server.
  ///
  /// This function must not be called if the server is already running.
  Future<void> start() async {
    assert(!running, 'Already started!');
    _initializationServer = await serve(
      _initializationRouter,
      InternetAddress.loopbackIPv4,
      initializationServerPort,
    );
  }

  /// Stops the server.
  ///
  /// This server must not be called if the server is not running.
  Future<void> stop() async {
    assert(running, 'Not started!');
    await _initializationServer!.close();
    await _session?.server.close();
    _initializationServer = null;
  }

  @protected
  Future<int> newSession(ClientDetails details) async {
    assert(running, 'New session started, but server is not running!');

    // Launch a new session server.
    // This is done before closing the old one to avoid it using the old port.
    // The order should cause no harm as the client is not given the new URI
    // until the old session server is closed.
    final server = await serve(_sessionRouter, InternetAddress.loopbackIPv4, 0);

    // Close the existing session server.
    await closeExistingSession();

    // Create the new session object, and notify the backend.
    // The session object is created with a timer that watches for heartbeats.
    _session = Session(
      clientDetails: details,
      server: server,
      heartbeatTimer: Timer.periodic(maxHeartbeatInterval, (_) {
        assert(
          hasSession,
          'Session closed, but heartbeat timer is still running!',
        );
        if (_session!.timeSinceLastHeartbeat > maxHeartbeatInterval) {
          closeExistingSession();
        }
      }),
    );
    backend.sessionStarted(details);

    // Return the new session server's port.
    return _session!.server.port;
  }

  /// Records the recording of a manual session heartbeat.
  @protected
  int manualSessionHeartbeatRecorded() {
    assert(hasSession);
    return _session!.manualHeartbeatRecorded();
  }

  /// If a session exists, close it.
  ///
  /// This function:
  /// - Cancels the session's heartbeat timer
  /// - Closes the session's server
  /// - Notifies the backend of the closure
  /// - Removes the session reference
  @protected
  Future<void> closeExistingSession() async {
    if (_session == null) return;
    _session!.heartbeatTimer.cancel();
    await _session!.server.close();
    backend.sessionStopped(_session!.clientDetails);
    _session = null;
  }

  /// Builds the base router that has common behaviour for both initialization
  /// and session servers.
  @mustCallSuper
  @protected
  RouterPlus buildBaseRouter() => RouterPlus(
        existingRouter: Router(
          // Handle requests to invalid API endpoints.
          // This exactly matches the behaviour of the official implementation,
          // hence the bizarre 'OK' status code.
          notFoundHandler: (_) => Response.ok(
            jsonEncode(
              const RazerChromaApiInvalidParameterException('invalid uri'),
            ),
            headers: const {HttpHeaders.contentTypeHeader: 'application/json'},
          ),
        ),
      )
        // Filter out requests from invalid hosts.
        ..use(hostFilterMiddleware)
        // Enable CORS.
        ..use(corsHeaders())
        // Handle API errors.
        ..use(apiErrorMiddleware)
        // Handle invalid data in requests.
        ..use(dataErrorMiddleware);

  /// Builds the router for the initialization server.
  @mustCallSuper
  @protected
  RouterPlus buildInitializationRouter() => buildBaseRouter();

  /// Builds the router for the session server.
  @mustCallSuper
  @protected
  RouterPlus buildSessionRouter() => buildBaseRouter()
    ..use(
      // Record a session heartbeat whenever a request is received.
      createMiddleware(
        requestHandler: (_) {
          assert(
            hasSession,
            'Session request received, but no session server should be running!',
          );
          _session!.heartbeat();
          return null;
        },
      ),
    );
}
