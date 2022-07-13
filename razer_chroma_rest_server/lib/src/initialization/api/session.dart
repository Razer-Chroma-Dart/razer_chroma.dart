import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:shelf_plus/shelf_plus.dart';

import 'package:razer_chroma_rest_server/src/errors/utils/checked_json_accessor.dart';
import 'package:razer_chroma_rest_server/src/initialization/data/session_server.dart';
import 'package:razer_chroma_rest_server/src/server.dart';

/// A mixin that implements session APIs.
mixin SessionApi on BaseRazerChromaRestServer {
  /// Handles a session initialization request.
  Future<InitializationResponse> _handleInitializationRequest(
      Request request) async {
    final sessionPort = await newSession(
        ClientDetails.fromJson(await request.body.asJsonChecked));
    return InitializationResponse(
      sessionId: sessionPort,
      uri: Uri(
        scheme: 'http',
        host: serverHost,
        port: sessionPort,
        path: sessionApiPath,
      ),
    );
  }

  /// Handles a heartbeat request.
  HeartbeatResponse _handleHeartbeat() {
    return HeartbeatResponse(
      // Record the recording of a manual session heartbeat. The heartbeat
      // recording is made by general middleware that records a heartbeat for
      // all received requests.
      tick: manualSessionHeartbeatRecorded(),
    );
  }

  /// Handles a session uninitialization request.
  Future<Response> _handleUninitializationRequest(Request request) async {
    // The response is encoded and manually streamed in order to make sure all
    // data is sent before closing the server.
    //
    // Razer's own implementation does not do this properly!
    const responseData = EmptyResultResponse(result: 0);
    final responseBytes =
        const JsonEncoder().fuse(utf8.encoder).convert(responseData);
    final responseStream = Stream.fromIterable([responseBytes])
        .asBroadcastStream(onCancel: (subscription) async {
      await subscription.cancel();
      // The closure is not awaited here; it's not necessary.
      closeExistingSession();
    });
    return Response.ok(
      responseStream,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.contentLengthHeader: responseBytes.length.toString(),
      },
    );
  }

  @mustCallSuper
  @protected
  @override
  RouterPlus buildInitializationRouter() => super.buildInitializationRouter()
    ..post(initializationApiPath, _handleInitializationRequest);

  @mustCallSuper
  @protected
  @override
  RouterPlus buildSessionRouter() => super.buildSessionRouter()
    ..put('$sessionApiPath/heartbeat', _handleHeartbeat)
    ..delete(sessionApiPath, _handleUninitializationRequest);
}
