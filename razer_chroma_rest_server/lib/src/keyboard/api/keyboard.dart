import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';
import 'package:razer_chroma_rest_server/src/effects/api/effects.dart';
import 'package:razer_chroma_rest_server/src/errors/utils/checked_json_accessor.dart';
import 'package:razer_chroma_rest_server/src/initialization/data/session_server.dart';
import 'package:shelf_plus/shelf_plus.dart';

/// A mixin that implements keyboard APIs.
mixin KeyboardApi on EffectsApi {
  static const _endpointRoute = '$sessionApiPath/keyboard';

  /// Handles a keyboard effect creation request.
  Future<EffectCreationResponse> _handleEffectCreation(Request request) async =>
      createEffect(KeyboardEffect.fromJson(await request.body.asJsonChecked));

  /// Handles a keyboard effect application request.
  Future<EmptyResultResponse> _handleEffectApplication(Request request) async {
    final applicationSuccessful = applyKeyboardEffect(
      KeyboardEffect.fromJson(await request.body.asJsonChecked),
    );
    // TODO inspect the official implementation to determine the correct error code; 1 is a guess.
    return EmptyResultResponse(result: applicationSuccessful ? 0 : 1);
  }

  @mustCallSuper
  @protected
  @override
  RouterPlus buildSessionRouter() => super.buildSessionRouter()
    ..put(_endpointRoute, _handleEffectApplication)
    ..post(_endpointRoute, _handleEffectCreation);
}
