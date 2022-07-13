// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'effect_application_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SinglApplicationCreationRequest _$$_SinglApplicationCreationRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SinglApplicationCreationRequest',
      json,
      ($checkedConvert) {
        final val = _$_SinglApplicationCreationRequest(
          id: $checkedConvert('id', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SinglApplicationCreationRequestToJson(
        _$_SinglApplicationCreationRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
