// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'empty_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmptyResultResponse _$EmptyResultResponseFromJson(Map<String, dynamic> json) {
  return _EmptyResultResponse.fromJson(json);
}

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
abstract class _$$_EmptyResultResponseCopyWith<$Res>
    implements $EmptyResultResponseCopyWith<$Res> {
  factory _$$_EmptyResultResponseCopyWith(_$_EmptyResultResponse value,
          $Res Function(_$_EmptyResultResponse) then) =
      __$$_EmptyResultResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'result') int result});
}

/// @nodoc
class __$$_EmptyResultResponseCopyWithImpl<$Res>
    extends _$EmptyResultResponseCopyWithImpl<$Res>
    implements _$$_EmptyResultResponseCopyWith<$Res> {
  __$$_EmptyResultResponseCopyWithImpl(_$_EmptyResultResponse _value,
      $Res Function(_$_EmptyResultResponse) _then)
      : super(_value, (v) => _then(v as _$_EmptyResultResponse));

  @override
  _$_EmptyResultResponse get _value => super._value as _$_EmptyResultResponse;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_EmptyResultResponse(
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
      _$$_EmptyResultResponseFromJson(json);

  /// The result code.
  @override
  @JsonKey(name: 'result')
  final int result;

  @override
  String toString() {
    return 'EmptyResultResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmptyResultResponse &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyResultResponseCopyWith<_$_EmptyResultResponse> get copyWith =>
      __$$_EmptyResultResponseCopyWithImpl<_$_EmptyResultResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmptyResultResponseToJson(this);
  }
}

abstract class _EmptyResultResponse extends EmptyResultResponse {
  const factory _EmptyResultResponse(
          {@JsonKey(name: 'result') required final int result}) =
      _$_EmptyResultResponse;
  const _EmptyResultResponse._() : super._();

  factory _EmptyResultResponse.fromJson(Map<String, dynamic> json) =
      _$_EmptyResultResponse.fromJson;

  @override

  /// The result code.
  @JsonKey(name: 'result')
  int get result;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyResultResponseCopyWith<_$_EmptyResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
