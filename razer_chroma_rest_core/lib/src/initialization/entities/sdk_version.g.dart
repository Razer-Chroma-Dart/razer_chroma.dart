// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SdkVersion _$$_SdkVersionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_SdkVersion',
      json,
      ($checkedConvert) {
        final val = _$_SdkVersion(
          core: $checkedConvert('core', (v) => v as String),
          device: $checkedConvert('device', (v) => v as String),
          version: $checkedConvert('version', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_SdkVersionToJson(_$_SdkVersion instance) =>
    <String, dynamic>{
      'core': instance.core,
      'device': instance.device,
      'version': instance.version,
    };
