// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, deprecated_member_use_from_same_package

part of 'empty_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmptyResultResponse _$$_EmptyResultResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_EmptyResultResponse',
      json,
      ($checkedConvert) {
        final val = _$_EmptyResultResponse(
          result: $checkedConvert('result', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_EmptyResultResponseToJson(
        _$_EmptyResultResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
