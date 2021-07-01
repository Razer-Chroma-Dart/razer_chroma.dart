// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Author _$_$_AuthorFromJson(Map<String, dynamic> json) {
  return $checkedNew(r'_$_Author', json, () {
    final val = _$_Author(
      name: $checkedConvert(json, 'name', (v) => v as String),
      contact: $checkedConvert(json, 'contact', (v) => v as String),
    );
    return val;
  });
}

Map<String, dynamic> _$_$_AuthorToJson(_$_Author instance) => <String, dynamic>{
      'name': instance.name,
      'contact': instance.contact,
    };
