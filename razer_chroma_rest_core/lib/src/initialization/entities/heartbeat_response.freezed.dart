// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'heartbeat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeartbeatResponse _$HeartbeatResponseFromJson(Map<String, dynamic> json) {
  return _HeartbeatResponse.fromJson(json);
}

/// @nodoc
mixin _$HeartbeatResponse {
  /// A counter that increments with every heartbeat response.
  @JsonKey(name: 'tick')
  int get tick => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeartbeatResponseCopyWith<HeartbeatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartbeatResponseCopyWith<$Res> {
  factory $HeartbeatResponseCopyWith(
          HeartbeatResponse value, $Res Function(HeartbeatResponse) then) =
      _$HeartbeatResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'tick') int tick});
}

/// @nodoc
class _$HeartbeatResponseCopyWithImpl<$Res>
    implements $HeartbeatResponseCopyWith<$Res> {
  _$HeartbeatResponseCopyWithImpl(this._value, this._then);

  final HeartbeatResponse _value;
  // ignore: unused_field
  final $Res Function(HeartbeatResponse) _then;

  @override
  $Res call({
    Object? tick = freezed,
  }) {
    return _then(_value.copyWith(
      tick: tick == freezed
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HeartbeatResponseCopyWith<$Res>
    implements $HeartbeatResponseCopyWith<$Res> {
  factory _$$_HeartbeatResponseCopyWith(_$_HeartbeatResponse value,
          $Res Function(_$_HeartbeatResponse) then) =
      __$$_HeartbeatResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'tick') int tick});
}

/// @nodoc
class __$$_HeartbeatResponseCopyWithImpl<$Res>
    extends _$HeartbeatResponseCopyWithImpl<$Res>
    implements _$$_HeartbeatResponseCopyWith<$Res> {
  __$$_HeartbeatResponseCopyWithImpl(
      _$_HeartbeatResponse _value, $Res Function(_$_HeartbeatResponse) _then)
      : super(_value, (v) => _then(v as _$_HeartbeatResponse));

  @override
  _$_HeartbeatResponse get _value => super._value as _$_HeartbeatResponse;

  @override
  $Res call({
    Object? tick = freezed,
  }) {
    return _then(_$_HeartbeatResponse(
      tick: tick == freezed
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeartbeatResponse implements _HeartbeatResponse {
  const _$_HeartbeatResponse({@JsonKey(name: 'tick') required this.tick});

  factory _$_HeartbeatResponse.fromJson(Map<String, dynamic> json) =>
      _$$_HeartbeatResponseFromJson(json);

  /// A counter that increments with every heartbeat response.
  @override
  @JsonKey(name: 'tick')
  final int tick;

  @override
  String toString() {
    return 'HeartbeatResponse(tick: $tick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeartbeatResponse &&
            const DeepCollectionEquality().equals(other.tick, tick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tick));

  @JsonKey(ignore: true)
  @override
  _$$_HeartbeatResponseCopyWith<_$_HeartbeatResponse> get copyWith =>
      __$$_HeartbeatResponseCopyWithImpl<_$_HeartbeatResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeartbeatResponseToJson(this);
  }
}

abstract class _HeartbeatResponse implements HeartbeatResponse {
  const factory _HeartbeatResponse(
      {@JsonKey(name: 'tick') required final int tick}) = _$_HeartbeatResponse;

  factory _HeartbeatResponse.fromJson(Map<String, dynamic> json) =
      _$_HeartbeatResponse.fromJson;

  @override

  /// A counter that increments with every heartbeat response.
  @JsonKey(name: 'tick')
  int get tick;
  @override
  @JsonKey(ignore: true)
  _$$_HeartbeatResponseCopyWith<_$_HeartbeatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
