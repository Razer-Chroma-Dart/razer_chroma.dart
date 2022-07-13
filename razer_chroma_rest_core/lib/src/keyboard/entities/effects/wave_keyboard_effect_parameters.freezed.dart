// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wave_keyboard_effect_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WaveKeyboardEffectParameters _$WaveKeyboardEffectParametersFromJson(
    Map<String, dynamic> json) {
  return _KeyboardWaveEffectParameters.fromJson(json);
}

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
abstract class _$$_KeyboardWaveEffectParametersCopyWith<$Res>
    implements $WaveKeyboardEffectParametersCopyWith<$Res> {
  factory _$$_KeyboardWaveEffectParametersCopyWith(
          _$_KeyboardWaveEffectParameters value,
          $Res Function(_$_KeyboardWaveEffectParameters) then) =
      __$$_KeyboardWaveEffectParametersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'direction') WaveKeyboardEffectDirection direction});
}

/// @nodoc
class __$$_KeyboardWaveEffectParametersCopyWithImpl<$Res>
    extends _$WaveKeyboardEffectParametersCopyWithImpl<$Res>
    implements _$$_KeyboardWaveEffectParametersCopyWith<$Res> {
  __$$_KeyboardWaveEffectParametersCopyWithImpl(
      _$_KeyboardWaveEffectParameters _value,
      $Res Function(_$_KeyboardWaveEffectParameters) _then)
      : super(_value, (v) => _then(v as _$_KeyboardWaveEffectParameters));

  @override
  _$_KeyboardWaveEffectParameters get _value =>
      super._value as _$_KeyboardWaveEffectParameters;

  @override
  $Res call({
    Object? direction = freezed,
  }) {
    return _then(_$_KeyboardWaveEffectParameters(
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
      _$$_KeyboardWaveEffectParametersFromJson(json);

  /// The direction of the wave effect.
  ///
  /// The use of [WaveKeyboardEffectDirection.none] and
  /// [WaveKeyboardEffectDirection.invalid] is undocumented. When used with
  /// the official API implementation, the effect seems to be ignored.
  @override
  @JsonKey(name: 'direction')
  final WaveKeyboardEffectDirection direction;

  @override
  String toString() {
    return 'WaveKeyboardEffectParameters(direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyboardWaveEffectParameters &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(direction));

  @JsonKey(ignore: true)
  @override
  _$$_KeyboardWaveEffectParametersCopyWith<_$_KeyboardWaveEffectParameters>
      get copyWith => __$$_KeyboardWaveEffectParametersCopyWithImpl<
          _$_KeyboardWaveEffectParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyboardWaveEffectParametersToJson(this);
  }
}

abstract class _KeyboardWaveEffectParameters
    implements WaveKeyboardEffectParameters {
  const factory _KeyboardWaveEffectParameters(
          {@JsonKey(name: 'direction')
              final WaveKeyboardEffectDirection direction}) =
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
  WaveKeyboardEffectDirection get direction;
  @override
  @JsonKey(ignore: true)
  _$$_KeyboardWaveEffectParametersCopyWith<_$_KeyboardWaveEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}
