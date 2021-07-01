// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'effect_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EffectCreationResponse _$EffectCreationResponseFromJson(
    Map<String, dynamic> json) {
  return _EffectCreationResponse.fromJson(json);
}

/// @nodoc
class _$EffectCreationResponseTearOff {
  const _$EffectCreationResponseTearOff();

  _EffectCreationResponse call(
      {@JsonKey(name: 'result') required int result,
      @JsonKey(name: 'id') required String? id}) {
    return _EffectCreationResponse(
      result: result,
      id: id,
    );
  }

  EffectCreationResponse fromJson(Map<String, Object> json) {
    return EffectCreationResponse.fromJson(json);
  }
}

/// @nodoc
const $EffectCreationResponse = _$EffectCreationResponseTearOff();

/// @nodoc
mixin _$EffectCreationResponse {
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;

  /// An identifier representing the effect.
  ///
  /// Typically a v4 UUID.
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EffectCreationResponseCopyWith<EffectCreationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectCreationResponseCopyWith<$Res> {
  factory $EffectCreationResponseCopyWith(EffectCreationResponse value,
          $Res Function(EffectCreationResponse) then) =
      _$EffectCreationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'result') int result, @JsonKey(name: 'id') String? id});
}

/// @nodoc
class _$EffectCreationResponseCopyWithImpl<$Res>
    implements $EffectCreationResponseCopyWith<$Res> {
  _$EffectCreationResponseCopyWithImpl(this._value, this._then);

  final EffectCreationResponse _value;
  // ignore: unused_field
  final $Res Function(EffectCreationResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EffectCreationResponseCopyWith<$Res>
    implements $EffectCreationResponseCopyWith<$Res> {
  factory _$EffectCreationResponseCopyWith(_EffectCreationResponse value,
          $Res Function(_EffectCreationResponse) then) =
      __$EffectCreationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'result') int result, @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$EffectCreationResponseCopyWithImpl<$Res>
    extends _$EffectCreationResponseCopyWithImpl<$Res>
    implements _$EffectCreationResponseCopyWith<$Res> {
  __$EffectCreationResponseCopyWithImpl(_EffectCreationResponse _value,
      $Res Function(_EffectCreationResponse) _then)
      : super(_value, (v) => _then(v as _EffectCreationResponse));

  @override
  _EffectCreationResponse get _value => super._value as _EffectCreationResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? id = freezed,
  }) {
    return _then(_EffectCreationResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EffectCreationResponse extends _EffectCreationResponse {
  const _$_EffectCreationResponse(
      {@JsonKey(name: 'result') required this.result,
      @JsonKey(name: 'id') required this.id})
      : super._();

  factory _$_EffectCreationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_EffectCreationResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int result;
  @override

  /// An identifier representing the effect.
  ///
  /// Typically a v4 UUID.
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'EffectCreationResponse(result: $result, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EffectCreationResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$EffectCreationResponseCopyWith<_EffectCreationResponse> get copyWith =>
      __$EffectCreationResponseCopyWithImpl<_EffectCreationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EffectCreationResponseToJson(this);
  }
}

abstract class _EffectCreationResponse extends EffectCreationResponse {
  const factory _EffectCreationResponse(
      {@JsonKey(name: 'result') required int result,
      @JsonKey(name: 'id') required String? id}) = _$_EffectCreationResponse;
  const _EffectCreationResponse._() : super._();

  factory _EffectCreationResponse.fromJson(Map<String, dynamic> json) =
      _$_EffectCreationResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  int get result => throw _privateConstructorUsedError;
  @override

  /// An identifier representing the effect.
  ///
  /// Typically a v4 UUID.
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EffectCreationResponseCopyWith<_EffectCreationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
