// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitializationResponse _$$_InitializationResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_InitializationResponse',
      json,
      ($checkedConvert) {
        final val = _$_InitializationResponse(
          sessionId: $checkedConvert('sessionid', (v) => v as int),
          uri: $checkedConvert('uri', (v) => Uri.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'sessionId': 'sessionid'},
    );

Map<String, dynamic> _$$_InitializationResponseToJson(
        _$_InitializationResponse instance) =>
    <String, dynamic>{
      'sessionid': instance.sessionId,
      'uri': instance.uri.toString(),
    };
