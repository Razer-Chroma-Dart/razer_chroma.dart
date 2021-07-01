// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'empty_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmptyResultResponse _$EmptyResultResponseFromJson(Map<String, dynamic> json) {
  return _EmptyResultResponse.fromJson(json);
}

/// @nodoc
class _$EmptyResultResponseTearOff {
  const _$EmptyResultResponseTearOff();

  _EmptyResultResponse call({@JsonKey(name: 'result') required int result}) {
    return _EmptyResultResponse(
      result: result,
    );
  }

  EmptyResultResponse fromJson(Map<String, Object> json) {
    return EmptyResultResponse.fromJson(json);
  }
}

/// @nodoc
const $EmptyResultResponse = _$EmptyResultResponseTearOff();

/// @nodoc
mixin _$EmptyResultResponse {
  /// The result code.
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyResultResponseCopyWith<EmptyResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyResultResponseCopyWith<$Res> {
  factory $EmptyResultResponseCopyWith(
          EmptyResultResponse value, $Res Function(EmptyResultResponse) then) =
      _$EmptyResultResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class _$EmptyResultResponseCopyWithImpl<$Res>
    implements $EmptyResultResponseCopyWith<$Res> {
  _$EmptyResultResponseCopyWithImpl(this._value, this._then);

  final EmptyResultResponse _value;
  // ignore: unused_field
  final $Res Function(EmptyResultResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EmptyResultResponseCopyWith<$Res>
    implements $EmptyResultResponseCopyWith<$Res> {
  factory _$EmptyResultResponseCopyWith(_EmptyResultResponse value,
          $Res Function(_EmptyResultResponse) then) =
      __$EmptyResultResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class __$EmptyResultResponseCopyWithImpl<$Res>
    extends _$EmptyResultResponseCopyWithImpl<$Res>
    implements _$EmptyResultResponseCopyWith<$Res> {
  __$EmptyResultResponseCopyWithImpl(
      _EmptyResultResponse _value, $Res Function(_EmptyResultResponse) _then)
      : super(_value, (v) => _then(v as _EmptyResultResponse));

  @override
  _EmptyResultResponse get _value => super._value as _EmptyResultResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_EmptyResultResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmptyResultResponse extends _EmptyResultResponse {
  const _$_EmptyResultResponse({@JsonKey(name: 'result') required this.result})
      : super._();

  factory _$_EmptyResultResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_EmptyResultResponseFromJson(json);

  @override

  /// The result code.
  @JsonKey(name: 'result')
  final int result;

  @override
  String toString() {
    return 'EmptyResultResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyResultResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$EmptyResultResponseCopyWith<_EmptyResultResponse> get copyWith =>
      __$EmptyResultResponseCopyWithImpl<_EmptyResultResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EmptyResultResponseToJson(this);
  }
}

abstract class _EmptyResultResponse extends EmptyResultResponse {
  const factory _EmptyResultResponse(
      {@JsonKey(name: 'result') required int result}) = _$_EmptyResultResponse;
  const _EmptyResultResponse._() : super._();

  factory _EmptyResultResponse.fromJson(Map<String, dynamic> json) =
      _$_EmptyResultResponse.fromJson;

  @override

  /// The result code.
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyResultResponseCopyWith<_EmptyResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
