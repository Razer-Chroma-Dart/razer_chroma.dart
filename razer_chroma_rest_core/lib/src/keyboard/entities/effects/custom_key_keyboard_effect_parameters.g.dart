// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, deprecated_member_use_from_same_package

part of 'custom_key_keyboard_effect_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomKeyKeyboardEffectParameters
    _$$_CustomKeyKeyboardEffectParametersFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$_CustomKeyKeyboardEffectParameters',
          json,
          ($checkedConvert) {
            final val = _$_CustomKeyKeyboardEffectParameters(
              colors: $checkedConvert(
                  'color',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          (e as List<dynamic>).map((e) => e as int).toList())
                      .toList()),
              keys: $checkedConvert(
                  'key', (v) => TranslatableKeyColor.matrixFromJson(v as List)),
            );
            return val;
          },
          fieldKeyMap: const {'colors': 'color', 'keys': 'key'},
        );

Map<String, dynamic> _$$_CustomKeyKeyboardEffectParametersToJson(
        _$_CustomKeyKeyboardEffectParameters instance) =>
    <String, dynamic>{
      'color': instance.colors,
      'key': TranslatableKeyColor.matrixToJson(instance.keys),
    };
