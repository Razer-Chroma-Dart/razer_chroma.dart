import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:razer_chroma_rest_core/src/keyboard/entities/translatable_key_color.dart';

part 'custom_key_keyboard_effect_parameters.freezed.dart';
part 'custom_key_keyboard_effect_parameters.g.dart';

@freezed
class CustomKeyKeyboardEffectParameters
    with _$CustomKeyKeyboardEffectParameters {
  const factory CustomKeyKeyboardEffectParameters({
    /// A list of 6 rows of 22 key colors to display on the keyboard.
    /// Colors are in the 0xBBGGRR format.
    @JsonKey(name: 'color') required List<List<int>> colors,

    /// Translatable key colors to display on the keyboard.
    @JsonKey(name: 'key', fromJson: TranslatableKeyColor.matrixFromJson, toJson: TranslatableKeyColor.matrixToJson)
        required List<List<TranslatableKeyColor?>> keys,
  }) = _CustomKeyKeyboardEffectParameters;

  factory CustomKeyKeyboardEffectParameters.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CustomKeyKeyboardEffectParametersFromJson(json);
}
