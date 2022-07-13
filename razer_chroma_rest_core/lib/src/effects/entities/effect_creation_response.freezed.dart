// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'effect_creation_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EffectCreationResponse _$EffectCreationResponseFromJson(
    Map<String, dynamic> json) {
  return _EffectCreationResponse.fromJson(json);
}

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
abstract class _$$_EffectCreationResponseCopyWith<$Res>
    implements $EffectCreationResponseCopyWith<$Res> {
  factory _$$_EffectCreationResponseCopyWith(_$_EffectCreationResponse value,
          $Res Function(_$_EffectCreationResponse) then) =
      __$$_EffectCreationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'result') int result, @JsonKey(name: 'id') String? id});
}

/// @nodoc
class __$$_EffectCreationResponseCopyWithImpl<$Res>
    extends _$EffectCreationResponseCopyWithImpl<$Res>
    implements _$$_EffectCreationResponseCopyWith<$Res> {
  __$$_EffectCreationResponseCopyWithImpl(_$_EffectCreationResponse _value,
      $Res Function(_$_EffectCreationResponse) _then)
      : super(_value, (v) => _then(v as _$_EffectCreationResponse));

  @override
  _$_EffectCreationResponse get _value =>
      super._value as _$_EffectCreationResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_EffectCreationResponse(
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
      _$$_EffectCreationResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final int result;

  /// An identifier representing the effect.
  ///
  /// Typically a v4 UUID.
  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'EffectCreationResponse(result: $result, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EffectCreationResponse &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_EffectCreationResponseCopyWith<_$_EffectCreationResponse> get copyWith =>
      __$$_EffectCreationResponseCopyWithImpl<_$_EffectCreationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EffectCreationResponseToJson(this);
  }
}

abstract class _EffectCreationResponse extends EffectCreationResponse {
  const factory _EffectCreationResponse(
          {@JsonKey(name: 'result') required final int result,
          @JsonKey(name: 'id') required final String? id}) =
      _$_EffectCreationResponse;
  const _EffectCreationResponse._() : super._();

  factory _EffectCreationResponse.fromJson(Map<String, dynamic> json) =
      _$_EffectCreationResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  int get result;
  @override

  /// An identifier representing the effect.
  ///
  /// Typically a v4 UUID.
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_EffectCreationResponseCopyWith<_$_EffectCreationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
