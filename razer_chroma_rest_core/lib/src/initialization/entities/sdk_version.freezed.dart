// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sdk_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SdkVersion _$SdkVersionFromJson(Map<String, dynamic> json) {
  return _SdkVersion.fromJson(json);
}

/// @nodoc
mixin _$SdkVersion {
  @JsonKey(name: 'core')
  String get core => throw _privateConstructorUsedError;
  @JsonKey(name: 'device')
  String get device => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SdkVersionCopyWith<SdkVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdkVersionCopyWith<$Res> {
  factory $SdkVersionCopyWith(
          SdkVersion value, $Res Function(SdkVersion) then) =
      _$SdkVersionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'core') String core,
      @JsonKey(name: 'device') String device,
      @JsonKey(name: 'version') String version});
}

/// @nodoc
class _$SdkVersionCopyWithImpl<$Res> implements $SdkVersionCopyWith<$Res> {
  _$SdkVersionCopyWithImpl(this._value, this._then);

  final SdkVersion _value;
  // ignore: unused_field
  final $Res Function(SdkVersion) _then;

  @override
  $Res call({
    Object? core = freezed,
    Object? device = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SdkVersionCopyWith<$Res>
    implements $SdkVersionCopyWith<$Res> {
  factory _$$_SdkVersionCopyWith(
          _$_SdkVersion value, $Res Function(_$_SdkVersion) then) =
      __$$_SdkVersionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'core') String core,
      @JsonKey(name: 'device') String device,
      @JsonKey(name: 'version') String version});
}

/// @nodoc
class __$$_SdkVersionCopyWithImpl<$Res> extends _$SdkVersionCopyWithImpl<$Res>
    implements _$$_SdkVersionCopyWith<$Res> {
  __$$_SdkVersionCopyWithImpl(
      _$_SdkVersion _value, $Res Function(_$_SdkVersion) _then)
      : super(_value, (v) => _then(v as _$_SdkVersion));

  @override
  _$_SdkVersion get _value => super._value as _$_SdkVersion;

  @override
  $Res call({
    Object? core = freezed,
    Object? device = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_SdkVersion(
      core: core == freezed
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SdkVersion implements _SdkVersion {
  const _$_SdkVersion(
      {@JsonKey(name: 'core') required this.core,
      @JsonKey(name: 'device') required this.device,
      @JsonKey(name: 'version') required this.version});

  factory _$_SdkVersion.fromJson(Map<String, dynamic> json) =>
      _$$_SdkVersionFromJson(json);

  @override
  @JsonKey(name: 'core')
  final String core;
  @override
  @JsonKey(name: 'device')
  final String device;
  @override
  @JsonKey(name: 'version')
  final String version;

  @override
  String toString() {
    return 'SdkVersion(core: $core, device: $device, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SdkVersion &&
            const DeepCollectionEquality().equals(other.core, core) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(core),
      const DeepCollectionEquality().hash(device),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_SdkVersionCopyWith<_$_SdkVersion> get copyWith =>
      __$$_SdkVersionCopyWithImpl<_$_SdkVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SdkVersionToJson(this);
  }
}

abstract class _SdkVersion implements SdkVersion {
  const factory _SdkVersion(
      {@JsonKey(name: 'core') required final String core,
      @JsonKey(name: 'device') required final String device,
      @JsonKey(name: 'version') required final String version}) = _$_SdkVersion;

  factory _SdkVersion.fromJson(Map<String, dynamic> json) =
      _$_SdkVersion.fromJson;

  @override
  @JsonKey(name: 'core')
  String get core;
  @override
  @JsonKey(name: 'device')
  String get device;
  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_SdkVersionCopyWith<_$_SdkVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
