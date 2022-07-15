import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_client/src/razer_chroma_client.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

/// A mixin that implements session APIs.
mixin SessionApi on BaseRazerChromaClient {
  /// A callback called when there's a connection error sending a heartbeat
  /// request.
  ///
  /// If this is `null`, the error will be thrown.
  ///
  /// Returns `true` if the error was handled, and `false` if it should be
  /// thrown.
  bool Function(Object error)? onHeartbeatError;

  @protected
  RazerChromaClientSession? _session;

  /// The current session.
  @protected
  RazerChromaClientSession get session =>
      _session ?? (throw StateError('Not connected!'));

  /// True if a session exists.
  bool get connected => _session != null;

  /// The session initialization endpoint.
  @internal
  static Uri get initializationUri => Uri(
        scheme: 'http',
        host: serverHost,
        port: initializationServerPort,
        path: initializationApiPath,
      );

  /// Starts a session.
  ///
  /// [clientDetails] describes the app.
  Future<void> connect(
    ClientDetails clientDetails, {
    Duration heartbeatInterval = const Duration(seconds: 1),
  }) async {
    final responseJson = await post<Map<String, dynamic>>(
      initializationUri,
      clientDetails,
    );
    final response = InitializationResponse.fromJson(responseJson);
    final session = _session = RazerChromaClientSession(
      (url) async {
        try {
          await put<Map<String, dynamic>>(url);
        } catch (e) {
          if (!(e is SocketException || e is http.ClientException)) rethrow;
          if (onHeartbeatError?.call(e) != true) rethrow;
        }
      },
      uri: response.uri,
      id: response.sessionId,
    );
    await session.startHeartbeat(heartbeatInterval);
  }

  /// Ends a session.
  ///
  /// Throws a [SocketException] or [ClientException] when network connections
  /// occur, which is common when using the official backend as it often closes
  /// the session server before the disconnection response has completed.
  Future<void> disconnect() async {
    assert(connected, 'Cannot disconnect - not connected!');
    _session!.stopHeartbeat();
    await delete<Map<String, dynamic>>(_session!.uri);
  }

  @override
  @mustCallSuper
  Future<void> close() async {
    if (connected) await disconnect();
    super.close();
  }
}

class RazerChromaClientSession {
  final Future<void> Function(Uri url) _put;

  /// The session server's URI.
  final Uri uri;

  /// The session identifier.
  final int id;

  Timer? _heartbeatTimer;
  var _active = false;

  RazerChromaClientSession(
    this._put, {
    required this.uri,
    required this.id,
  });

  Uri urlWithPath(String path) => uri.replace(path: '${uri.path}/$path');

  Future<void> _heartbeat() async {
    if (_active) {
      try {
        await _put(urlWithPath('heartbeat'));
      } catch (e) {
        if (!(e is SocketException || e is http.ClientException)) rethrow;
        _active = false;
      }
    } else {
      _heartbeatTimer!.cancel();
      _heartbeatTimer = null;
    }
  }

  Future<void> startHeartbeat(Duration interval) async {
    assert(
      interval < maxHeartbeatInterval,
      'Heartbeat interval must be under 15s!',
    );
    _active = true;
    _heartbeatTimer = Timer.periodic(interval, (timer) => _heartbeat());
    await _heartbeat();
  }

  void stopHeartbeat() => _active = false;
}
