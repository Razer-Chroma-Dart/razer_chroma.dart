// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wave_keyboard_effect_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WaveKeyboardEffectParameters _$WaveKeyboardEffectParametersFromJson(
    Map<String, dynamic> json) {
  return _KeyboardWaveEffectParameters.fromJson(json);
}

/// @nodoc
class _$WaveKeyboardEffectParametersTearOff {
  const _$WaveKeyboardEffectParametersTearOff();

  _KeyboardWaveEffectParameters call(
      {@JsonKey(name: 'direction') WaveKeyboardEffectDirection direction =
          WaveKeyboardEffectDirection.leftToRight}) {
    return _KeyboardWaveEffectParameters(
      direction: direction,
    );
  }

  WaveKeyboardEffectParameters fromJson(Map<String, Object> json) {
    return WaveKeyboardEffectParameters.fromJson(json);
  }
}

/// @nodoc
const $WaveKeyboardEffectParameters = _$WaveKeyboardEffectParametersTearOff();

/// @nodoc
mixin _$WaveKeyboardEffectParameters {
  /// The direction of the wave effect.
  ///
  /// The use of [WaveKeyboardEffectDirection.none] and
  /// [WaveKeyboardEffectDirection.invalid] is undocumented. When used with
  /// the official API implementation, the effect seems to be ignored.
  @JsonKey(name: 'direction')
  WaveKeyboardEffectDirection get direction =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaveKeyboardEffectParametersCopyWith<WaveKeyboardEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaveKeyboardEffectParametersCopyWith<$Res> {
  factory $WaveKeyboardEffectParametersCopyWith(
          WaveKeyboardEffectParameters value,
          $Res Function(WaveKeyboardEffectParameters) then) =
      _$WaveKeyboardEffectParametersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'direction') WaveKeyboardEffectDirection direction});
}

/// @nodoc
class _$WaveKeyboardEffectParametersCopyWithImpl<$Res>
    implements $WaveKeyboardEffectParametersCopyWith<$Res> {
  _$WaveKeyboardEffectParametersCopyWithImpl(this._value, this._then);

  final WaveKeyboardEffectParameters _value;
  // ignore: unused_field
  final $Res Function(WaveKeyboardEffectParameters) _then;

  @override
  $Res call({
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as WaveKeyboardEffectDirection,
    ));
  }
}

/// @nodoc
abstract class _$KeyboardWaveEffectParametersCopyWith<$Res>
    implements $WaveKeyboardEffectParametersCopyWith<$Res> {
  factory _$KeyboardWaveEffectParametersCopyWith(
          _KeyboardWaveEffectParameters value,
          $Res Function(_KeyboardWaveEffectParameters) then) =
      __$KeyboardWaveEffectParametersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'direction') WaveKeyboardEffectDirection direction});
}

/// @nodoc
class __$KeyboardWaveEffectParametersCopyWithImpl<$Res>
    extends _$WaveKeyboardEffectParametersCopyWithImpl<$Res>
    implements _$KeyboardWaveEffectParametersCopyWith<$Res> {
  __$KeyboardWaveEffectParametersCopyWithImpl(
      _KeyboardWaveEffectParameters _value,
      $Res Function(_KeyboardWaveEffectParameters) _then)
      : super(_value, (v) => _then(v as _KeyboardWaveEffectParameters));

  @override
  _KeyboardWaveEffectParameters get _value =>
      super._value as _KeyboardWaveEffectParameters;

  @override
  $Res call({
    Object? direction = freezed,
  }) {
    return _then(_KeyboardWaveEffectParameters(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as WaveKeyboardEffectDirection,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KeyboardWaveEffectParameters implements _KeyboardWaveEffectParameters {
  const _$_KeyboardWaveEffectParameters(
      {@JsonKey(name: 'direction')
          this.direction = WaveKeyboardEffectDirection.leftToRight});

  factory _$_KeyboardWaveEffectParameters.fromJson(Map<String, dynamic> json) =>
      _$_$_KeyboardWaveEffectParametersFromJson(json);

  @override

  /// The direction of the wave effect.
  ///
  /// The use of [WaveKeyboardEffectDirection.none] and
  /// [WaveKeyboardEffectDirection.invalid] is undocumented. When used with
  /// the official API implementation, the effect seems to be ignored.
  @JsonKey(name: 'direction')
  final WaveKeyboardEffectDirection direction;

  @override
  String toString() {
    return 'WaveKeyboardEffectParameters(direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeyboardWaveEffectParameters &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(direction);

  @JsonKey(ignore: true)
  @override
  _$KeyboardWaveEffectParametersCopyWith<_KeyboardWaveEffectParameters>
      get copyWith => __$KeyboardWaveEffectParametersCopyWithImpl<
          _KeyboardWaveEffectParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_KeyboardWaveEffectParametersToJson(this);
  }
}

abstract class _KeyboardWaveEffectParameters
    implements WaveKeyboardEffectParameters {
  const factory _KeyboardWaveEffectParameters(
          {@JsonKey(name: 'direction') WaveKeyboardEffectDirection direction}) =
      _$_KeyboardWaveEffectParameters;

  factory _KeyboardWaveEffectParameters.fromJson(Map<String, dynamic> json) =
      _$_KeyboardWaveEffectParameters.fromJson;

  @override

  /// The direction of the wave effect.
  ///
  /// The use of [WaveKeyboardEffectDirection.none] and
  /// [WaveKeyboardEffectDirection.invalid] is undocumented. When used with
  /// the official API implementation, the effect seems to be ignored.
  @JsonKey(name: 'direction')
  WaveKeyboardEffectDirection get direction =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$KeyboardWaveEffectParametersCopyWith<_KeyboardWaveEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}
