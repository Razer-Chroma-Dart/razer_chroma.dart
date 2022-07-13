// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartbeat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HeartbeatResponse _$$_HeartbeatResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_HeartbeatResponse',
      json,
      ($checkedConvert) {
        final val = _$_HeartbeatResponse(
          tick: $checkedConvert('tick', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_HeartbeatResponseToJson(
        _$_HeartbeatResponse instance) =>
    <String, dynamic>{
      'tick': instance.tick,
    };
