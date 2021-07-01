// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_effect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmptyKeyboardEffect _$_$EmptyKeyboardEffectFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$EmptyKeyboardEffect', json, () {
    final val = _$EmptyKeyboardEffect();
    return val;
  });
}

Map<String, dynamic> _$_$EmptyKeyboardEffectToJson(
        _$EmptyKeyboardEffect instance) =>
    <String, dynamic>{};

_$StaticKeyboardEffect _$_$StaticKeyboardEffectFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$StaticKeyboardEffect', json, () {
    final val = _$StaticKeyboardEffect(
      $checkedConvert(
          json,
          'param',
          (v) => StaticKeyboardEffectParameters.fromJson(
              v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'parameters': 'param'});
}

Map<String, dynamic> _$_$StaticKeyboardEffectToJson(
        _$StaticKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.parameters,
    };

_$CustomKeyboardEffect _$_$CustomKeyboardEffectFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$CustomKeyboardEffect', json, () {
    final val = _$CustomKeyboardEffect(
      $checkedConvert(
          json,
          'param',
          (v) => (v as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList()),
    );
    return val;
  }, fieldKeyMap: const {'colors': 'param'});
}

Map<String, dynamic> _$_$CustomKeyboardEffectToJson(
        _$CustomKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.colors,
    };

_$WaveKeyboardEffect _$_$WaveKeyboardEffectFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$WaveKeyboardEffect', json, () {
    final val = _$WaveKeyboardEffect(
      $checkedConvert(
          json,
          'param',
          (v) =>
              WaveKeyboardEffectParameters.fromJson(v as Map<String, dynamic>)),
    );
    return val;
  }, fieldKeyMap: const {'parameters': 'param'});
}

Map<String, dynamic> _$_$WaveKeyboardEffectToJson(
        _$WaveKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.parameters,
    };
