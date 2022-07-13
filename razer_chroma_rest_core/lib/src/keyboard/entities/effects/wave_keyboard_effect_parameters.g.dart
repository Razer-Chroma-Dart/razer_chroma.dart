// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wave_keyboard_effect_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeyboardWaveEffectParameters _$$_KeyboardWaveEffectParametersFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_KeyboardWaveEffectParameters',
      json,
      ($checkedConvert) {
        final val = _$_KeyboardWaveEffectParameters(
          direction: $checkedConvert(
              'direction',
              (v) =>
                  $enumDecodeNullable(
                      _$WaveKeyboardEffectDirectionEnumMap, v) ??
                  WaveKeyboardEffectDirection.leftToRight),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_KeyboardWaveEffectParametersToJson(
        _$_KeyboardWaveEffectParameters instance) =>
    <String, dynamic>{
      'direction': _$WaveKeyboardEffectDirectionEnumMap[instance.direction]!,
    };

const _$WaveKeyboardEffectDirectionEnumMap = {
  WaveKeyboardEffectDirection.none: 0,
  WaveKeyboardEffectDirection.leftToRight: 1,
  WaveKeyboardEffectDirection.rightToLeft: 2,
  WaveKeyboardEffectDirection.invalid: 3,
};
