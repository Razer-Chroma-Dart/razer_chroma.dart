// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientDetails _$_$_ClientDetailsFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_ClientDetails', json, () {
    final val = _$_ClientDetails(
      title: $checkedConvert(json, 'title', (v) => v as String),
      description: $checkedConvert(json, 'description', (v) => v as String),
      author: $checkedConvert(
          json, 'author', (v) => Author.fromJson(v as Map<String, dynamic>)),
      supportedDevices: $checkedConvert(
          json,
          'device_supported',
          (v) => (v as List<dynamic>)
              .map((e) => _$enumDecode(_$DeviceTypeEnumMap, e))
              .toSet()),
      category: $checkedConvert(
          json, 'category', (v) => _$enumDecode(_$ClientCategoryEnumMap, v)),
    );
    return val;
  }, fieldKeyMap: const {'supportedDevices': 'device_supported'});
}

Map<String, dynamic> _$_$_ClientDetailsToJson(_$_ClientDetails instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'device_supported':
          instance.supportedDevices.map((e) => _$DeviceTypeEnumMap[e]).toList(),
      'category': _$ClientCategoryEnumMap[instance.category],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

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
