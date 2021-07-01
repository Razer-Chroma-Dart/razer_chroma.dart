// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wave_keyboard_effect_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KeyboardWaveEffectParameters _$_$_KeyboardWaveEffectParametersFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_KeyboardWaveEffectParameters', json, () {
    final val = _$_KeyboardWaveEffectParameters(
      direction: $checkedConvert(json, 'direction',
          (v) => _$enumDecode(_$WaveKeyboardEffectDirectionEnumMap, v)),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_KeyboardWaveEffectParametersToJson(
        _$_KeyboardWaveEffectParameters instance) =>
    <String, dynamic>{
      'direction': _$WaveKeyboardEffectDirectionEnumMap[instance.direction],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$WaveKeyboardEffectDirectionEnumMap = {
  WaveKeyboardEffectDirection.none: 0,
  WaveKeyboardEffectDirection.leftToRight: 1,
  WaveKeyboardEffectDirection.rightToLeft: 2,
  WaveKeyboardEffectDirection.invalid: 3,
};
