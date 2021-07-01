// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartbeat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HeartbeatResponse _$_$_HeartbeatResponseFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_HeartbeatResponse', json, () {
    final val = _$_HeartbeatResponse(
      tick: $checkedConvert(json, 'tick', (v) => v as int),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_HeartbeatResponseToJson(
        _$_HeartbeatResponse instance) =>
    <String, dynamic>{
      'tick': instance.tick,
    };
