import 'package:razer_chroma_rest_client/src/effects/api/effects.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

/// A mixin that implements keyboard APIs.
mixin KeyboardApi on EffectsApi {
  Uri get _uri => session.urlWithPath('keyboard');

  /// Applies a keyboard effect.
  ///
  /// Returns `true` if the effect applied successfully.
  Future<bool> setKeyboardEffect(KeyboardEffect effect) async {
    final resultJson = await put<Map<String, dynamic>>(_uri, effect);
    final result = EmptyResultResponse.fromJson(resultJson);
    return result.successful;
  }

  /// Creates a keyboard effect associated with an identifier.
  ///
  /// Returns the identifier if the creation succeeds, or `null` if it fails.
  Future<String?> createKeyboardEffect(KeyboardEffect effect) =>
      createEffect(_uri, effect);
}
