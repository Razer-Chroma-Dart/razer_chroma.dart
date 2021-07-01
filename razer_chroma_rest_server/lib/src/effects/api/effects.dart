import 'package:meta/meta.dart';
import 'package:razer_chroma/razer_chroma.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:shelf_plus/shelf_plus.dart';
import 'package:uuid/uuid.dart';

import '/src/errors/utils/checked_json_accessor.dart';
import '/src/initialization/api/session.dart';
import '/src/initialization/data/session_server.dart';
import '/src/session.dart';

/// A mixin that implements effects APIs.
mixin EffectsApi on SessionApi {
  static const _endpointRoute = '$sessionApiPath/effect';

  /// Stores the given effect in the session, to be used later with the returned
  /// identifier.
  ///
  /// [T] must be a general device effect type; that is, [KeyboardEffect]
  /// instead of [StaticKeyboardEffect]. See [SessionEffectEntry] for more
  /// information.
  ///
  /// This is not attached to a REST endpoint; it should be called after
  /// receiving requests at device-specific endpoints.
  @protected
  EffectCreationResponse createEffect<T extends DeviceEffect>(T effect) {
    final uuid = const Uuid().v4();
    // Don't bother traversing the entire effect list to ensure that there are
    // no UUID collisions; UUIDs are designed to be unique.
    // If there is a collision, the existing effect will just be overwritten.
    // That tiny chance is worth the performance optimization.
    internalSession.effects[uuid] = SessionEffectEntry<T>(effect);
    return EffectCreationResponse(result: 0, id: uuid);
  }

  /// Applies an effect referenced by an identifier generated with
  /// [createEffect].
  ///
  /// This is not attached to a REST endpoint; it should be called after
  /// receiving requests at the keyboard endpoint.
  @protected
  bool applyKeyboardEffect(KeyboardEffect effect) {
    final bool applicationSuccessful;
    if (effect is EmptyKeyboardEffect) {
      applicationSuccessful = backend.keyboardEmptyEffect();
    } else if (effect is StaticKeyboardEffect) {
      applicationSuccessful =
          backend.keyboardStaticEffect(bgrToColor(effect.parameters.color));
    } else if (effect is CustomKeyboardEffect) {
      applicationSuccessful = backend.keyboardCustomEffect(
        effect.colors
            .map((row) => row.map(bgrToColor).toList(growable: false))
            .toList(growable: false),
      );
    } else if (effect is WaveKeyboardEffect) {
      applicationSuccessful =
          backend.keyboardWaveEffect(effect.parameters.direction);
    } else {
      throw UnimplementedError(
          'Backend call for effect "${effect.runtimeType}" is not yet implemented!');
    }
    return applicationSuccessful;
  }

  /// Handles an identifier-related effect application request.
  Future<EmptyResultResponse> _handleEffectApplication(Request request) async {
    final bool applicationSuccessful;
    final requestJson = await request.body.asJsonChecked;
    if (requestJson.containsKey('id')) {
      final request = SingleEffectApplicationRequest.fromJson(requestJson);
      applicationSuccessful = _applyEffectForId(request.id);
    } else {
      // TODO implement more application request types.
      applicationSuccessful = false;
    }
    // TODO inspect the official implementation to determine the correct error code; 1 is a guess.
    return EmptyResultResponse(result: applicationSuccessful ? 0 : 1);
  }

  /// Applies an effect referenced by an identifier generated with
  /// [createEffect].
  ///
  /// Returns `true` if the effect application is successful.
  @protected
  bool _applyEffectForId(String id) {
    final effectEntry = internalSession.effects[id];
    if (effectEntry == null) return false;
    if (effectEntry is SessionEffectEntry<KeyboardEffect>) {
      return applyKeyboardEffect(effectEntry.effect);
    } else {
      // TODO implement effects for more devices.
      return false;
    }
  }

  @mustCallSuper
  @protected
  @override
  RouterPlus buildSessionRouter() =>
      super.buildSessionRouter()..put(_endpointRoute, _handleEffectApplication);
}
