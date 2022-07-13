import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:razer_chroma_rest_core/src/effects/entities/device_effect.dart';
import 'package:razer_chroma_rest_core/src/keyboard/entities/effects/static_keyboard_effect_parameters.dart';
import 'package:razer_chroma_rest_core/src/keyboard/entities/effects/wave_keyboard_effect_parameters.dart';

part 'keyboard_effect.freezed.dart';
part 'keyboard_effect.g.dart';

/// A keyboard effect.
@Freezed(unionKey: DeviceEffect.effectKey)
class KeyboardEffect with _$KeyboardEffect implements DeviceEffect {
  /// An effect that does nothing.
  ///
  /// This can be used to remove all effects from the keyboard.
  @FreezedUnionValue('CHROMA_NONE')
  const factory KeyboardEffect.empty() = EmptyKeyboardEffect;

  /// An effect that shows a static color.
  @FreezedUnionValue('CHROMA_STATIC')
  const factory KeyboardEffect.static(
    @JsonKey(name: DeviceEffect.parametersKey)
        StaticKeyboardEffectParameters parameters,
  ) = StaticKeyboardEffect;

  /// An effect that shows a custom set of colors.
  @FreezedUnionValue('CHROMA_CUSTOM')
  @Assert('colors.length == 6')
  @Assert('colors.every((row) => row.length == 22)')
  @Assert(
      'colors.every((row) => row.every((color) => color >= 0 && color <= 0xFFFFFF))')
  factory KeyboardEffect.custom(
    /// A list of 6 rows of 22 key colors to display on the keyboard.
    /// Colors are in the 0xBBGGRR format.
    @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors,
  ) = CustomKeyboardEffect;

  /// A wave effect.
  @Deprecated(
      'Removed from the API documentation (deprecated and should not be used)')
  @FreezedUnionValue('CHROMA_WAVE')
  const factory KeyboardEffect.wave([
    @JsonKey(name: DeviceEffect.parametersKey)
    @Default(WaveKeyboardEffectParameters())
        WaveKeyboardEffectParameters parameters,
  ]) = WaveKeyboardEffect;

  factory KeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$KeyboardEffectFromJson(json);
}
