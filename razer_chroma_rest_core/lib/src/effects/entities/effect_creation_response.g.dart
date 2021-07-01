// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effect_creation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EffectCreationResponse _$_$_EffectCreationResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_EffectCreationResponse', json, () {
    final val = _$_EffectCreationResponse(
      result: $checkedConvert(json, 'result', (v) => v as int),
      id: $checkedConvert(json, 'id', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_EffectCreationResponseToJson(
        _$_EffectCreationResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
      'id': instance.id,
    };
