import 'package:freezed_annotation/freezed_annotation.dart';

part 'wave_keyboard_effect_parameters.freezed.dart';
part 'wave_keyboard_effect_parameters.g.dart';

/// Parameters for [WaveKeyboardEffect].
@freezed
class WaveKeyboardEffectParameters with _$WaveKeyboardEffectParameters {
  const factory WaveKeyboardEffectParameters({
    /// The direction of the wave effect.
    ///
    /// The use of [WaveKeyboardEffectDirection.none] and
    /// [WaveKeyboardEffectDirection.invalid] is undocumented. When used with
    /// the official API implementation, the effect seems to be ignored.
    @JsonKey(name: 'direction')
    @Default(WaveKeyboardEffectDirection.leftToRight)
        WaveKeyboardEffectDirection direction,
  }) = _KeyboardWaveEffectParameters;

  factory WaveKeyboardEffectParameters.fromJson(Map<String, dynamic> json) =>
      _$WaveKeyboardEffectParametersFromJson(json);
}

/// The direction of the wave in the wave keyboard effect.
///
/// Based on [ChromaSDK::Keyboard::WAVE_EFFECT_TYPE] documentation.
///
/// [ChromaSDK::Keyboard::WAVE_EFFECT_TYPE]: https://assets.razerzone.com/dev_portal/REST/html/struct_chroma_s_d_k_1_1_keyboard_1_1_w_a_v_e___e_f_f_e_c_t___t_y_p_e.html
enum WaveKeyboardEffectDirection {
  /// No direction.
  @JsonValue(0)
  none,

  /// Left to right.
  @JsonValue(1)
  leftToRight,

  /// Right to left.
  @JsonValue(2)
  rightToLeft,

  /// Invalid direction.
  @JsonValue(3)
  invalid,
}
