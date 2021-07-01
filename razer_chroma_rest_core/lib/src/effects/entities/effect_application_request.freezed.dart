// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'effect_application_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SingleEffectApplicationRequest _$SingleEffectApplicationRequestFromJson(
    Map<String, dynamic> json) {
  return _SinglApplicationCreationRequest.fromJson(json);
}

/// @nodoc
class _$SingleEffectApplicationRequestTearOff {
  const _$SingleEffectApplicationRequestTearOff();

  _SinglApplicationCreationRequest call(
      {@JsonKey(name: 'id') required String id}) {
    return _SinglApplicationCreationRequest(
      id: id,
    );
  }

  SingleEffectApplicationRequest fromJson(Map<String, Object> json) {
    return SingleEffectApplicationRequest.fromJson(json);
  }
}

/// @nodoc
const $SingleEffectApplicationRequest =
    _$SingleEffectApplicationRequestTearOff();

/// @nodoc
mixin _$SingleEffectApplicationRequest {
  /// The effect identifier.
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleEffectApplicationRequestCopyWith<SingleEffectApplicationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleEffectApplicationRequestCopyWith<$Res> {
  factory $SingleEffectApplicationRequestCopyWith(
          SingleEffectApplicationRequest value,
          $Res Function(SingleEffectApplicationRequest) then) =
      _$SingleEffectApplicationRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$SingleEffectApplicationRequestCopyWithImpl<$Res>
    implements $SingleEffectApplicationRequestCopyWith<$Res> {
  _$SingleEffectApplicationRequestCopyWithImpl(this._value, this._then);

  final SingleEffectApplicationRequest _value;
  // ignore: unused_field
  final $Res Function(SingleEffectApplicationRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SinglApplicationCreationRequestCopyWith<$Res>
    implements $SingleEffectApplicationRequestCopyWith<$Res> {
  factory _$SinglApplicationCreationRequestCopyWith(
          _SinglApplicationCreationRequest value,
          $Res Function(_SinglApplicationCreationRequest) then) =
      __$SinglApplicationCreationRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$SinglApplicationCreationRequestCopyWithImpl<$Res>
    extends _$SingleEffectApplicationRequestCopyWithImpl<$Res>
    implements _$SinglApplicationCreationRequestCopyWith<$Res> {
  __$SinglApplicationCreationRequestCopyWithImpl(
      _SinglApplicationCreationRequest _value,
      $Res Function(_SinglApplicationCreationRequest) _then)
      : super(_value, (v) => _then(v as _SinglApplicationCreationRequest));

  @override
  _SinglApplicationCreationRequest get _value =>
      super._value as _SinglApplicationCreationRequest;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SinglApplicationCreationRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SinglApplicationCreationRequest
    implements _SinglApplicationCreationRequest {
  const _$_SinglApplicationCreationRequest(
      {@JsonKey(name: 'id') required this.id});

  factory _$_SinglApplicationCreationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$_$_SinglApplicationCreationRequestFromJson(json);

  @override

  /// The effect identifier.
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'SingleEffectApplicationRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SinglApplicationCreationRequest &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SinglApplicationCreationRequestCopyWith<_SinglApplicationCreationRequest>
      get copyWith => __$SinglApplicationCreationRequestCopyWithImpl<
          _SinglApplicationCreationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SinglApplicationCreationRequestToJson(this);
  }
}

abstract class _SinglApplicationCreationRequest
    implements SingleEffectApplicationRequest {
  const factory _SinglApplicationCreationRequest(
          {@JsonKey(name: 'id') required String id}) =
      _$_SinglApplicationCreationRequest;

  factory _SinglApplicationCreationRequest.fromJson(Map<String, dynamic> json) =
      _$_SinglApplicationCreationRequest.fromJson;

  @override

  /// The effect identifier.
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SinglApplicationCreationRequestCopyWith<_SinglApplicationCreationRequest>
      get copyWith => throw _privateConstructorUsedError;
}
