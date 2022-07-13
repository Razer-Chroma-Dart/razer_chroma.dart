// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, deprecated_member_use_from_same_package

part of 'client_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientDetails _$$_ClientDetailsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ClientDetails',
      json,
      ($checkedConvert) {
        final val = _$_ClientDetails(
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          author: $checkedConvert(
              'author', (v) => Author.fromJson(v as Map<String, dynamic>)),
          supportedDevices: $checkedConvert(
              'device_supported',
              (v) => (v as List<dynamic>)
                  .map((e) => $enumDecode(_$DeviceTypeEnumMap, e))
                  .toSet()),
          category: $checkedConvert(
              'category', (v) => $enumDecode(_$ClientCategoryEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'supportedDevices': 'device_supported'},
    );

Map<String, dynamic> _$$_ClientDetailsToJson(_$_ClientDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'device_supported': instance.supportedDevices
          .map((e) => _$DeviceTypeEnumMap[e]!)
          .toList(),
      'category': _$ClientCategoryEnumMap[instance.category]!,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.keyboard: 'keyboard',
  DeviceType.mouse: 'mouse',
  DeviceType.headset: 'headset',
  DeviceType.mousepad: 'mousepad',
  DeviceType.keypad: 'keypad',
  DeviceType.chromalink: 'chromalink',
};

const _$ClientCategoryEnumMap = {
  ClientCategory.application: 'application',
  ClientCategory.game: 'game',
};
