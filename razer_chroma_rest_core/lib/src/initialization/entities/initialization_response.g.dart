// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initialization_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitializationResponse _$_$_InitializationResponseFromJson(
    Map<String, dynamic> json) {
  return $checkedNew(r'_$_InitializationResponse', json, () {
    final val = _$_InitializationResponse(
      sessionId: $checkedConvert(json, 'sessionid', (v) => v as int),
      uri: $checkedConvert(json, 'uri', (v) => Uri.parse(v as String)),
    );
    return val;
  }, fieldKeyMap: const {'sessionId': 'sessionid'});
}

Map<String, dynamic> _$_$_InitializationResponseToJson(
        _$_InitializationResponse instance) =>
    <String, dynamic>{
      'sessionid': instance.sessionId,
      'uri': instance.uri.toString(),
    };
