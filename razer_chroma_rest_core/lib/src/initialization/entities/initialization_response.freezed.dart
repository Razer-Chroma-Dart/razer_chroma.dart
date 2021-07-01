// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'initialization_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitializationResponse _$InitializationResponseFromJson(
    Map<String, dynamic> json) {
  return _InitializationResponse.fromJson(json);
}

/// @nodoc
class _$InitializationResponseTearOff {
  const _$InitializationResponseTearOff();

  _InitializationResponse call(
      {@JsonKey(name: 'sessionid') required int sessionId,
      @JsonKey(name: 'uri') required Uri uri}) {
    return _InitializationResponse(
      sessionId: sessionId,
      uri: uri,
    );
  }

  InitializationResponse fromJson(Map<String, Object> json) {
    return InitializationResponse.fromJson(json);
  }
}

/// @nodoc
const $InitializationResponse = _$InitializationResponseTearOff();

/// @nodoc
mixin _$InitializationResponse {
  ///	Identifier for this session.
  ///
  /// Example: `123456`
  @JsonKey(name: 'sessionid')
  int get sessionId => throw _privateConstructorUsedError;

  /// Uniform Resource Identifier for this instance.
  ///
  /// Example: `http://localhost:123456/chromasdk`
  @JsonKey(name: 'uri')
  Uri get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitializationResponseCopyWith<InitializationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationResponseCopyWith<$Res> {
  factory $InitializationResponseCopyWith(InitializationResponse value,
          $Res Function(InitializationResponse) then) =
      _$InitializationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sessionid') int sessionId,
      @JsonKey(name: 'uri') Uri uri});
}

/// @nodoc
class _$InitializationResponseCopyWithImpl<$Res>
    implements $InitializationResponseCopyWith<$Res> {
  _$InitializationResponseCopyWithImpl(this._value, this._then);

  final InitializationResponse _value;
  // ignore: unused_field
  final $Res Function(InitializationResponse) _then;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? uri = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$InitializationResponseCopyWith<$Res>
    implements $InitializationResponseCopyWith<$Res> {
  factory _$InitializationResponseCopyWith(_InitializationResponse value,
          $Res Function(_InitializationResponse) then) =
      __$InitializationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sessionid') int sessionId,
      @JsonKey(name: 'uri') Uri uri});
}

/// @nodoc
class __$InitializationResponseCopyWithImpl<$Res>
    extends _$InitializationResponseCopyWithImpl<$Res>
    implements _$InitializationResponseCopyWith<$Res> {
  __$InitializationResponseCopyWithImpl(_InitializationResponse _value,
      $Res Function(_InitializationResponse) _then)
      : super(_value, (v) => _then(v as _InitializationResponse));

  @override
  _InitializationResponse get _value => super._value as _InitializationResponse;

  @override
  $Res call({
    Object? sessionId = freezed,
    Object? uri = freezed,
  }) {
    return _then(_InitializationResponse(
      sessionId: sessionId == freezed
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as int,
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitializationResponse implements _InitializationResponse {
  const _$_InitializationResponse(
      {@JsonKey(name: 'sessionid') required this.sessionId,
      @JsonKey(name: 'uri') required this.uri});

  factory _$_InitializationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_InitializationResponseFromJson(json);

  @override

  ///	Identifier for this session.
  ///
  /// Example: `123456`
  @JsonKey(name: 'sessionid')
  final int sessionId;
  @override

  /// Uniform Resource Identifier for this instance.
  ///
  /// Example: `http://localhost:123456/chromasdk`
  @JsonKey(name: 'uri')
  final Uri uri;

  @override
  String toString() {
    return 'InitializationResponse(sessionId: $sessionId, uri: $uri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitializationResponse &&
            (identical(other.sessionId, sessionId) ||
                const DeepCollectionEquality()
                    .equals(other.sessionId, sessionId)) &&
            (identical(other.uri, uri) ||
                const DeepCollectionEquality().equals(other.uri, uri)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sessionId) ^
      const DeepCollectionEquality().hash(uri);

  @JsonKey(ignore: true)
  @override
  _$InitializationResponseCopyWith<_InitializationResponse> get copyWith =>
      __$InitializationResponseCopyWithImpl<_InitializationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_InitializationResponseToJson(this);
  }
}

abstract class _InitializationResponse implements InitializationResponse {
  const factory _InitializationResponse(
      {@JsonKey(name: 'sessionid') required int sessionId,
      @JsonKey(name: 'uri') required Uri uri}) = _$_InitializationResponse;

  factory _InitializationResponse.fromJson(Map<String, dynamic> json) =
      _$_InitializationResponse.fromJson;

  @override

  ///	Identifier for this session.
  ///
  /// Example: `123456`
  @JsonKey(name: 'sessionid')
  int get sessionId => throw _privateConstructorUsedError;
  @override

  /// Uniform Resource Identifier for this instance.
  ///
  /// Example: `http://localhost:123456/chromasdk`
  @JsonKey(name: 'uri')
  Uri get uri => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitializationResponseCopyWith<_InitializationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
