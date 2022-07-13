import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:shelf_plus/shelf_plus.dart';

import 'package:razer_chroma_rest_server/src/errors/exceptions/json_type.dart';

/// Middleware that handles invalid data being sent to the API.
///
/// This middleware catches errors when JSON is deserialized in a handler,
/// rather than attempting to deserialize JSON itself. It can also handle errors
/// thrown by deserialization code generated with [JsonSerializable.checked].
///
/// The request will fail with a [HttpStatus.badRequest] response code if it
/// contains invalid data.
final dataErrorMiddleware = createMiddleware(
  errorHandler: (error, stackTrace) {
    if (error is FormatException) {
      return Response(HttpStatus.badRequest,
          body:
              'Format error: "${error.message}", source: "${error.source}", offset: ${error.offset})');
    } else if (error is CheckedFromJsonException) {
      return Response(HttpStatus.badRequest,
          body:
              'JSON format error: "${error.message}", source: "${jsonEncode(error.map)}", serialized class: ${error.className})');
    } else if (error is JsonTypeException) {
      return Response(HttpStatus.badRequest,
          body:
              'Invalid JSON data type - expected "${error.expectedType}", received "${error.receivedType}".');
    } else {
      throw error;
    }
  },
);
