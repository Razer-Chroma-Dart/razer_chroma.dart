// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sdk_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SdkVersion _$_$_SdkVersionFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_SdkVersion', json, () {
    final val = _$_SdkVersion(
      core: $checkedConvert(json, 'core', (v) => v as String),
      device: $checkedConvert(json, 'device', (v) => v as String),
      version: $checkedConvert(json, 'version', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_SdkVersionToJson(_$_SdkVersion instance) =>
    <String, dynamic>{
      'core': instance.core,
      'device': instance.device,
      'version': instance.version,
    };
