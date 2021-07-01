// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'static_keyboard_effect_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StaticKeyboardEffectParameters _$StaticKeyboardEffectParametersFromJson(
    Map<String, dynamic> json) {
  return _StaticKeyboardEffectParameters.fromJson(json);
}

/// @nodoc
class _$StaticKeyboardEffectParametersTearOff {
  const _$StaticKeyboardEffectParametersTearOff();

  _StaticKeyboardEffectParameters call(@JsonKey(name: 'color') int color) {
    return _StaticKeyboardEffectParameters(
      color,
    );
  }

  StaticKeyboardEffectParameters fromJson(Map<String, Object> json) {
    return StaticKeyboardEffectParameters.fromJson(json);
  }
}

/// @nodoc
const $StaticKeyboardEffectParameters =
    _$StaticKeyboardEffectParametersTearOff();

/// @nodoc
mixin _$StaticKeyboardEffectParameters {
  /// The color, in 0xBBGGRR format.
  @JsonKey(name: 'color')
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaticKeyboardEffectParametersCopyWith<StaticKeyboardEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaticKeyboardEffectParametersCopyWith<$Res> {
  factory $StaticKeyboardEffectParametersCopyWith(
          StaticKeyboardEffectParameters value,
          $Res Function(StaticKeyboardEffectParameters) then) =
      _$StaticKeyboardEffectParametersCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'color') int color});
}

/// @nodoc
class _$StaticKeyboardEffectParametersCopyWithImpl<$Res>
    implements $StaticKeyboardEffectParametersCopyWith<$Res> {
  _$StaticKeyboardEffectParametersCopyWithImpl(this._value, this._then);

  final StaticKeyboardEffectParameters _value;
  // ignore: unused_field
  final $Res Function(StaticKeyboardEffectParameters) _then;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StaticKeyboardEffectParametersCopyWith<$Res>
    implements $StaticKeyboardEffectParametersCopyWith<$Res> {
  factory _$StaticKeyboardEffectParametersCopyWith(
          _StaticKeyboardEffectParameters value,
          $Res Function(_StaticKeyboardEffectParameters) then) =
      __$StaticKeyboardEffectParametersCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'color') int color});
}

/// @nodoc
class __$StaticKeyboardEffectParametersCopyWithImpl<$Res>
    extends _$StaticKeyboardEffectParametersCopyWithImpl<$Res>
    implements _$StaticKeyboardEffectParametersCopyWith<$Res> {
  __$StaticKeyboardEffectParametersCopyWithImpl(
      _StaticKeyboardEffectParameters _value,
      $Res Function(_StaticKeyboardEffectParameters) _then)
      : super(_value, (v) => _then(v as _StaticKeyboardEffectParameters));

  @override
  _StaticKeyboardEffectParameters get _value =>
      super._value as _StaticKeyboardEffectParameters;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_StaticKeyboardEffectParameters(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StaticKeyboardEffectParameters
    implements _StaticKeyboardEffectParameters {
  const _$_StaticKeyboardEffectParameters(@JsonKey(name: 'color') this.color)
      : assert(color >= 0 && color <= 0xFFFFFF,
            'Color must be an integer in the 0xBBGGRR format!');

  factory _$_StaticKeyboardEffectParameters.fromJson(
          Map<String, dynamic> json) =>
      _$_$_StaticKeyboardEffectParametersFromJson(json);

  @override

  /// The color, in 0xBBGGRR format.
  @JsonKey(name: 'color')
  final int color;

  @override
  String toString() {
    return 'StaticKeyboardEffectParameters(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StaticKeyboardEffectParameters &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$StaticKeyboardEffectParametersCopyWith<_StaticKeyboardEffectParameters>
      get copyWith => __$StaticKeyboardEffectParametersCopyWithImpl<
          _StaticKeyboardEffectParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StaticKeyboardEffectParametersToJson(this);
  }
}

abstract class _StaticKeyboardEffectParameters
    implements StaticKeyboardEffectParameters {
  const factory _StaticKeyboardEffectParameters(
      @JsonKey(name: 'color') int color) = _$_StaticKeyboardEffectParameters;

  factory _StaticKeyboardEffectParameters.fromJson(Map<String, dynamic> json) =
      _$_StaticKeyboardEffectParameters.fromJson;

  @override

  /// The color, in 0xBBGGRR format.
  @JsonKey(name: 'color')
  int get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StaticKeyboardEffectParametersCopyWith<_StaticKeyboardEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}
