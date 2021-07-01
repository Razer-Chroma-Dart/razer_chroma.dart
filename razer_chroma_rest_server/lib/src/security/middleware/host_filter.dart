import 'dart:io';

import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:shelf_plus/shelf_plus.dart';

/// Middleware that checks that a request's hostname matches the hostname
/// required by the API specification.
///
/// The request will fail with a [HttpStatus.badRequest] response code if
/// blocked.
final hostFilterMiddleware = createMiddleware(
  requestHandler: (Request request) {
    if (request.headers[HttpHeaders.hostHeader] !=
        '$serverHost:${request.requestedUri.port}') {
      return Response(
        HttpStatus.badRequest,
        body:
            'Error ${HttpStatus.badRequest}: The requested hostname is invalid.',
      );
    }
  },
);
