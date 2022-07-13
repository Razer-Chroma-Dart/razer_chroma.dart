// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, deprecated_member_use_from_same_package

part of 'effect_creation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EffectCreationResponse _$$_EffectCreationResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_EffectCreationResponse',
      json,
      ($checkedConvert) {
        final val = _$_EffectCreationResponse(
          result: $checkedConvert('result', (v) => v as int),
          id: $checkedConvert('id', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_EffectCreationResponseToJson(
        _$_EffectCreationResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'id': instance.id,
    };
