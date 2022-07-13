import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

import 'package:razer_chroma_rest_client/src/initialization/api/session.dart';

/// A mixin that implements effects APIs.
mixin EffectsApi on SessionApi {
  Uri get _uri => session.urlWithPath('effect');

  /// Create an [effect] using the given API [endpoint].
  ///
  /// This is used internally by device-category-specific functions like
  /// [KeyboardApi.createKeyboardEffect], use those instead.
  ///
  /// Returns the identifier if the creation succeeds, or `null` if it fails.
  @protected
  Future<String?> createEffect(Uri endpoint, DeviceEffect effect) async {
    final responseJson = await post<Map<String, dynamic>>(endpoint, effect);
    final response = EffectCreationResponse.fromJson(responseJson);
    if (response.successful) return response.id;
  }

  /// Applies the effect represented by the [id].
  ///
  /// Returns `true` if the effect applies successfully.
  Future<bool> applyEffect(String id) async {
    final resultJson = await put<Map<String, dynamic>>(
        _uri, SingleEffectApplicationRequest(id: id));
    final result = EmptyResultResponse.fromJson(resultJson);
    return result.successful;
  }
}
