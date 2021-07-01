import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_keyboard_effect_parameters.freezed.dart';
part 'static_keyboard_effect_parameters.g.dart';

/// Parameters for the [StaticKeyboardEffect].
@freezed
class StaticKeyboardEffectParameters with _$StaticKeyboardEffectParameters {
  @Assert('color >= 0 && color <= 0xFFFFFF',
      'Color must be an integer in the 0xBBGGRR format!')
  const factory StaticKeyboardEffectParameters(
    /// The color, in 0xBBGGRR format.
    @JsonKey(name: 'color') int color,
  ) = _StaticKeyboardEffectParameters;

  factory StaticKeyboardEffectParameters.fromJson(Map<String, dynamic> json) =>
      _$StaticKeyboardEffectParametersFromJson(json);
}
