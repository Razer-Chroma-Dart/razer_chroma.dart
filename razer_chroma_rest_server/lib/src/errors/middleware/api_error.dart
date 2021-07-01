import 'dart:convert';
import 'dart:io';

import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:shelf/shelf.dart';

/// Middleware that transforms API exceptions into responses.
///
/// When a handler throws a [RazerChromaApiException] (including subclasses),
/// an error response will be sent out instead.
///
/// While undefined by the API documentation, the official implementation uses
/// response status codes of [HttpStatus.ok], so that behaviour is replicated
/// here.
final apiErrorMiddleware = createMiddleware(
  errorHandler: (error, stacktrace) {
    if (error is RazerChromaApiException) {
      return Response.ok(
        jsonEncode(error),
        headers: const {HttpHeaders.contentTypeHeader: 'application/json'},
      );
    } else {
      throw error;
    }
  },
);
