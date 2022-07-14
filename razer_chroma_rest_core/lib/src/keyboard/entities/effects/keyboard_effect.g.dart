// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, deprecated_member_use_from_same_package

part of 'keyboard_effect.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmptyKeyboardEffect _$$EmptyKeyboardEffectFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EmptyKeyboardEffect',
      json,
      ($checkedConvert) {
        final val = _$EmptyKeyboardEffect(
          $type: $checkedConvert('effect', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'effect'},
    );

Map<String, dynamic> _$$EmptyKeyboardEffectToJson(
        _$EmptyKeyboardEffect instance) =>
    <String, dynamic>{
      'effect': instance.$type,
    };

_$StaticKeyboardEffect _$$StaticKeyboardEffectFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$StaticKeyboardEffect',
      json,
      ($checkedConvert) {
        final val = _$StaticKeyboardEffect(
          $checkedConvert(
              'param',
              (v) => StaticKeyboardEffectParameters.fromJson(
                  v as Map<String, dynamic>)),
          $type: $checkedConvert('effect', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'parameters': 'param', r'$type': 'effect'},
    );

Map<String, dynamic> _$$StaticKeyboardEffectToJson(
        _$StaticKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.parameters,
      'effect': instance.$type,
    };

_$CustomKeyboardEffect _$$CustomKeyboardEffectFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomKeyboardEffect',
      json,
      ($checkedConvert) {
        final val = _$CustomKeyboardEffect(
          $checkedConvert(
              'param',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => (e as List<dynamic>).map((e) => e as int).toList())
                  .toList()),
          $type: $checkedConvert('effect', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'colors': 'param', r'$type': 'effect'},
    );

Map<String, dynamic> _$$CustomKeyboardEffectToJson(
        _$CustomKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.colors,
      'effect': instance.$type,
    };

_$CustomKeyKeyboardEffect _$$CustomKeyKeyboardEffectFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$CustomKeyKeyboardEffect',
      json,
      ($checkedConvert) {
        final val = _$CustomKeyKeyboardEffect(
          $checkedConvert(
              'param',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k,
                        (e as List<dynamic>)
                            .map((e) => (e as List<dynamic>)
                                .map((e) => e as int)
                                .toList())
                            .toList()),
                  )),
          $type: $checkedConvert('effect', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'effect'},
    );

Map<String, dynamic> _$$CustomKeyKeyboardEffectToJson(
        _$CustomKeyKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.param,
      'effect': instance.$type,
    };

_$WaveKeyboardEffect _$$WaveKeyboardEffectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$WaveKeyboardEffect',
      json,
      ($checkedConvert) {
        final val = _$WaveKeyboardEffect(
          $checkedConvert(
              'param',
              (v) => v == null
                  ? const WaveKeyboardEffectParameters()
                  : WaveKeyboardEffectParameters.fromJson(
                      v as Map<String, dynamic>)),
          $checkedConvert('effect', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'parameters': 'param', r'$type': 'effect'},
    );

Map<String, dynamic> _$$WaveKeyboardEffectToJson(
        _$WaveKeyboardEffect instance) =>
    <String, dynamic>{
      'param': instance.parameters,
      'effect': instance.$type,
    };
