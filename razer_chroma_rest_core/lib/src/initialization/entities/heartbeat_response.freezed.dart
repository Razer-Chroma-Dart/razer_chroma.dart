// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'heartbeat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeartbeatResponse _$HeartbeatResponseFromJson(Map<String, dynamic> json) {
  return _HeartbeatResponse.fromJson(json);
}

/// @nodoc
class _$HeartbeatResponseTearOff {
  const _$HeartbeatResponseTearOff();

  _HeartbeatResponse call({@JsonKey(name: 'tick') required int tick}) {
    return _HeartbeatResponse(
      tick: tick,
    );
  }

  HeartbeatResponse fromJson(Map<String, Object> json) {
    return HeartbeatResponse.fromJson(json);
  }
}

/// @nodoc
const $HeartbeatResponse = _$HeartbeatResponseTearOff();

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
abstract class _$HeartbeatResponseCopyWith<$Res>
    implements $HeartbeatResponseCopyWith<$Res> {
  factory _$HeartbeatResponseCopyWith(
          _HeartbeatResponse value, $Res Function(_HeartbeatResponse) then) =
      __$HeartbeatResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'tick') int tick});
}

/// @nodoc
class __$HeartbeatResponseCopyWithImpl<$Res>
    extends _$HeartbeatResponseCopyWithImpl<$Res>
    implements _$HeartbeatResponseCopyWith<$Res> {
  __$HeartbeatResponseCopyWithImpl(
      _HeartbeatResponse _value, $Res Function(_HeartbeatResponse) _then)
      : super(_value, (v) => _then(v as _HeartbeatResponse));

  @override
  _HeartbeatResponse get _value => super._value as _HeartbeatResponse;

  @override
  $Res call({
    Object? tick = freezed,
  }) {
    return _then(_HeartbeatResponse(
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
      _$_$_HeartbeatResponseFromJson(json);

  @override

  /// A counter that increments with every heartbeat response.
  @JsonKey(name: 'tick')
  final int tick;

  @override
  String toString() {
    return 'HeartbeatResponse(tick: $tick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeartbeatResponse &&
            (identical(other.tick, tick) ||
                const DeepCollectionEquality().equals(other.tick, tick)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tick);

  @JsonKey(ignore: true)
  @override
  _$HeartbeatResponseCopyWith<_HeartbeatResponse> get copyWith =>
      __$HeartbeatResponseCopyWithImpl<_HeartbeatResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeartbeatResponseToJson(this);
  }
}

abstract class _HeartbeatResponse implements HeartbeatResponse {
  const factory _HeartbeatResponse({@JsonKey(name: 'tick') required int tick}) =
      _$_HeartbeatResponse;

  factory _HeartbeatResponse.fromJson(Map<String, dynamic> json) =
      _$_HeartbeatResponse.fromJson;

  @override

  /// A counter that increments with every heartbeat response.
  @JsonKey(name: 'tick')
  int get tick => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeartbeatResponseCopyWith<_HeartbeatResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
