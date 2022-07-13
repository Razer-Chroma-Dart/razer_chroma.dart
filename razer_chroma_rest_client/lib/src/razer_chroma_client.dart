import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

import 'package:razer_chroma_rest_client/src/effects/api/effects.dart';
import 'package:razer_chroma_rest_client/src/initialization/api/session.dart';
import 'package:razer_chroma_rest_client/src/initialization/api/version.dart';
import 'package:razer_chroma_rest_client/src/keyboard/api/keyboard.dart';

class RazerChromaClient = BaseRazerChromaClient
    with VersionApi, SessionApi, EffectsApi, KeyboardApi;

abstract class BaseRazerChromaClient {
  /// The [Client] used to communicate with the Razer Chroma SDK.
  final _httpClient = Client();

  /// Closes the client.
  @mustCallSuper
  Future<void> close() async => _httpClient.close();

  /// Makes an HTTP API request, parsing the response and checking the response
  /// type.
  ///
  /// Calls [makeRequest], passing in a [Client] to use for HTTP requests.
  /// [makeRequest] should return the response body as a [String], to be decoded
  /// as JSON data.
  ///
  /// Throws a [FormatException] if the response data could not be decoded as
  /// JSON, or if the decoded JSON is not an object of type [T].
  @protected
  Future<T> makeApiRequest<T>(
      Future<String> Function(Client httpClient) makeRequest) async {
    final responseData = await makeRequest(_httpClient);
    final responseJson = jsonDecode(responseData);
    if (responseJson is Map<String, dynamic>) {
      if (responseJson.containsKey('error')) {
        throw RazerChromaApiException.fromJson(responseJson);
      }
    }
    if (responseJson is! T) {
      throw FormatException(
        'API response is in an invalid format! (Expected type "$T", got type "${responseJson.runtimeType}".)',
        responseJson,
      );
    }
    return responseJson;
  }

  /// A convenience GET wrapper around [makeApiRequest].
  @protected
  Future<T> get<T>(Uri url) =>
      makeApiRequest<T>((httpClient) => httpClient.read(url));

  /// A convenience POST wrapper around [makeApiRequest].
  ///
  /// The [body] is encoded as JSON data.
  @protected
  Future<T> post<T>(Uri url, Object? body) =>
      makeApiRequest<T>((httpClient) => httpClient
          .post(
            url,
            headers: const {HttpHeaders.contentTypeHeader: 'application/json'},
            body: jsonEncode(body),
          )
          .then((response) => response.body));

  /// A convenience PUT wrapper around [makeApiRequest].
  ///
  /// The [body] is encoded as JSON data.
  @protected
  Future<T> put<T>(Uri url, [Object? body]) =>
      makeApiRequest<T>((httpClient) => _httpClient
          .put(
            url,
            headers: body == null
                ? null
                : const {HttpHeaders.contentTypeHeader: 'application/json'},
            body: body == null ? null : jsonEncode(body),
          )
          .then((response) => response.body));

  /// A convenience DELETE wrapper around [makeApiRequest].
  @protected
  Future<T> delete<T>(Uri url) => makeApiRequest<T>(
      (httpClient) => httpClient.delete(url).then((response) => response.body));
}
