// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'keyboard_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyboardEffect _$KeyboardEffectFromJson(Map<String, dynamic> json) {
  switch (json['effect'] as String) {
    case 'CHROMA_NONE':
      return EmptyKeyboardEffect.fromJson(json);
    case 'CHROMA_STATIC':
      return StaticKeyboardEffect.fromJson(json);
    case 'CHROMA_CUSTOM':
      return CustomKeyboardEffect.fromJson(json);
    case 'CHROMA_WAVE':
      return WaveKeyboardEffect.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'effect', 'KeyboardEffect',
          'Invalid union type "${json['effect']}"!');
  }
}

/// @nodoc
class _$KeyboardEffectTearOff {
  const _$KeyboardEffectTearOff();

  EmptyKeyboardEffect empty() {
    return const EmptyKeyboardEffect();
  }

  StaticKeyboardEffect static(
      @JsonKey(name: DeviceEffect.parametersKey)
          StaticKeyboardEffectParameters parameters) {
    return StaticKeyboardEffect(
      parameters,
    );
  }

  CustomKeyboardEffect custom(
      @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors) {
    return CustomKeyboardEffect(
      colors,
    );
  }

  WaveKeyboardEffect wave(
      [@JsonKey(name: DeviceEffect.parametersKey)
          WaveKeyboardEffectParameters
              parameters = const WaveKeyboardEffectParameters()]) {
    return WaveKeyboardEffect(
      parameters,
    );
  }

  KeyboardEffect fromJson(Map<String, Object> json) {
    return KeyboardEffect.fromJson(json);
  }
}

/// @nodoc
const $KeyboardEffect = _$KeyboardEffectTearOff();

/// @nodoc
mixin _$KeyboardEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)
        static,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)
        custom,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)?
        static,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)?
        custom,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyKeyboardEffect value) empty,
    required TResult Function(StaticKeyboardEffect value) static,
    required TResult Function(CustomKeyboardEffect value) custom,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(WaveKeyboardEffect value)? wave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardEffectCopyWith<$Res> {
  factory $KeyboardEffectCopyWith(
          KeyboardEffect value, $Res Function(KeyboardEffect) then) =
      _$KeyboardEffectCopyWithImpl<$Res>;
}

/// @nodoc
class _$KeyboardEffectCopyWithImpl<$Res>
    implements $KeyboardEffectCopyWith<$Res> {
  _$KeyboardEffectCopyWithImpl(this._value, this._then);

  final KeyboardEffect _value;
  // ignore: unused_field
  final $Res Function(KeyboardEffect) _then;
}

/// @nodoc
abstract class $EmptyKeyboardEffectCopyWith<$Res> {
  factory $EmptyKeyboardEffectCopyWith(
          EmptyKeyboardEffect value, $Res Function(EmptyKeyboardEffect) then) =
      _$EmptyKeyboardEffectCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements $EmptyKeyboardEffectCopyWith<$Res> {
  _$EmptyKeyboardEffectCopyWithImpl(
      EmptyKeyboardEffect _value, $Res Function(EmptyKeyboardEffect) _then)
      : super(_value, (v) => _then(v as EmptyKeyboardEffect));

  @override
  EmptyKeyboardEffect get _value => super._value as EmptyKeyboardEffect;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('CHROMA_NONE')
class _$EmptyKeyboardEffect implements EmptyKeyboardEffect {
  const _$EmptyKeyboardEffect();

  factory _$EmptyKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$_$EmptyKeyboardEffectFromJson(json);

  @override
  String toString() {
    return 'KeyboardEffect.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyKeyboardEffect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)
        static,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)
        custom,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)?
        static,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)?
        custom,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyKeyboardEffect value) empty,
    required TResult Function(StaticKeyboardEffect value) static,
    required TResult Function(CustomKeyboardEffect value) custom,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(WaveKeyboardEffect value)? wave,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EmptyKeyboardEffectToJson(this)..['effect'] = 'CHROMA_NONE';
  }
}

abstract class EmptyKeyboardEffect implements KeyboardEffect {
  const factory EmptyKeyboardEffect() = _$EmptyKeyboardEffect;

  factory EmptyKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$EmptyKeyboardEffect.fromJson;
}

/// @nodoc
abstract class $StaticKeyboardEffectCopyWith<$Res> {
  factory $StaticKeyboardEffectCopyWith(StaticKeyboardEffect value,
          $Res Function(StaticKeyboardEffect) then) =
      _$StaticKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey)
          StaticKeyboardEffectParameters parameters});

  $StaticKeyboardEffectParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class _$StaticKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements $StaticKeyboardEffectCopyWith<$Res> {
  _$StaticKeyboardEffectCopyWithImpl(
      StaticKeyboardEffect _value, $Res Function(StaticKeyboardEffect) _then)
      : super(_value, (v) => _then(v as StaticKeyboardEffect));

  @override
  StaticKeyboardEffect get _value => super._value as StaticKeyboardEffect;

  @override
  $Res call({
    Object? parameters = freezed,
  }) {
    return _then(StaticKeyboardEffect(
      parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as StaticKeyboardEffectParameters,
    ));
  }

  @override
  $StaticKeyboardEffectParametersCopyWith<$Res> get parameters {
    return $StaticKeyboardEffectParametersCopyWith<$Res>(_value.parameters,
        (value) {
      return _then(_value.copyWith(parameters: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('CHROMA_STATIC')
class _$StaticKeyboardEffect implements StaticKeyboardEffect {
  const _$StaticKeyboardEffect(
      @JsonKey(name: DeviceEffect.parametersKey) this.parameters);

  factory _$StaticKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$_$StaticKeyboardEffectFromJson(json);

  @override
  @JsonKey(name: DeviceEffect.parametersKey)
  final StaticKeyboardEffectParameters parameters;

  @override
  String toString() {
    return 'KeyboardEffect.static(parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StaticKeyboardEffect &&
            (identical(other.parameters, parameters) ||
                const DeepCollectionEquality()
                    .equals(other.parameters, parameters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parameters);

  @JsonKey(ignore: true)
  @override
  $StaticKeyboardEffectCopyWith<StaticKeyboardEffect> get copyWith =>
      _$StaticKeyboardEffectCopyWithImpl<StaticKeyboardEffect>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)
        static,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)
        custom,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return static(parameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)?
        static,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)?
        custom,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
    required TResult orElse(),
  }) {
    if (static != null) {
      return static(parameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyKeyboardEffect value) empty,
    required TResult Function(StaticKeyboardEffect value) static,
    required TResult Function(CustomKeyboardEffect value) custom,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return static(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(WaveKeyboardEffect value)? wave,
    required TResult orElse(),
  }) {
    if (static != null) {
      return static(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$StaticKeyboardEffectToJson(this)..['effect'] = 'CHROMA_STATIC';
  }
}

abstract class StaticKeyboardEffect implements KeyboardEffect {
  const factory StaticKeyboardEffect(
      @JsonKey(name: DeviceEffect.parametersKey)
          StaticKeyboardEffectParameters parameters) = _$StaticKeyboardEffect;

  factory StaticKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$StaticKeyboardEffect.fromJson;

  @JsonKey(name: DeviceEffect.parametersKey)
  StaticKeyboardEffectParameters get parameters =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StaticKeyboardEffectCopyWith<StaticKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomKeyboardEffectCopyWith<$Res> {
  factory $CustomKeyboardEffectCopyWith(CustomKeyboardEffect value,
          $Res Function(CustomKeyboardEffect) then) =
      _$CustomKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors});
}

/// @nodoc
class _$CustomKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements $CustomKeyboardEffectCopyWith<$Res> {
  _$CustomKeyboardEffectCopyWithImpl(
      CustomKeyboardEffect _value, $Res Function(CustomKeyboardEffect) _then)
      : super(_value, (v) => _then(v as CustomKeyboardEffect));

  @override
  CustomKeyboardEffect get _value => super._value as CustomKeyboardEffect;

  @override
  $Res call({
    Object? colors = freezed,
  }) {
    return _then(CustomKeyboardEffect(
      colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('CHROMA_CUSTOM')
class _$CustomKeyboardEffect implements CustomKeyboardEffect {
  _$CustomKeyboardEffect(@JsonKey(name: DeviceEffect.parametersKey) this.colors)
      : assert(colors.length == 6),
        assert(colors.every((row) => row.length == 22)),
        assert(colors.every(
            (row) => row.every((color) => color >= 0 && color <= 0xFFFFFF)));

  factory _$CustomKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$_$CustomKeyboardEffectFromJson(json);

  @override

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @JsonKey(name: DeviceEffect.parametersKey)
  final List<List<int>> colors;

  @override
  String toString() {
    return 'KeyboardEffect.custom(colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomKeyboardEffect &&
            (identical(other.colors, colors) ||
                const DeepCollectionEquality().equals(other.colors, colors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(colors);

  @JsonKey(ignore: true)
  @override
  $CustomKeyboardEffectCopyWith<CustomKeyboardEffect> get copyWith =>
      _$CustomKeyboardEffectCopyWithImpl<CustomKeyboardEffect>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)
        static,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)
        custom,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return custom(colors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)?
        static,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)?
        custom,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(colors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyKeyboardEffect value) empty,
    required TResult Function(StaticKeyboardEffect value) static,
    required TResult Function(CustomKeyboardEffect value) custom,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(WaveKeyboardEffect value)? wave,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CustomKeyboardEffectToJson(this)..['effect'] = 'CHROMA_CUSTOM';
  }
}

abstract class CustomKeyboardEffect implements KeyboardEffect {
  factory CustomKeyboardEffect(
          @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors) =
      _$CustomKeyboardEffect;

  factory CustomKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$CustomKeyboardEffect.fromJson;

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @JsonKey(name: DeviceEffect.parametersKey)
  List<List<int>> get colors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomKeyboardEffectCopyWith<CustomKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaveKeyboardEffectCopyWith<$Res> {
  factory $WaveKeyboardEffectCopyWith(
          WaveKeyboardEffect value, $Res Function(WaveKeyboardEffect) then) =
      _$WaveKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey)
          WaveKeyboardEffectParameters parameters});

  $WaveKeyboardEffectParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class _$WaveKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements $WaveKeyboardEffectCopyWith<$Res> {
  _$WaveKeyboardEffectCopyWithImpl(
      WaveKeyboardEffect _value, $Res Function(WaveKeyboardEffect) _then)
      : super(_value, (v) => _then(v as WaveKeyboardEffect));

  @override
  WaveKeyboardEffect get _value => super._value as WaveKeyboardEffect;

  @override
  $Res call({
    Object? parameters = freezed,
  }) {
    return _then(WaveKeyboardEffect(
      parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as WaveKeyboardEffectParameters,
    ));
  }

  @override
  $WaveKeyboardEffectParametersCopyWith<$Res> get parameters {
    return $WaveKeyboardEffectParametersCopyWith<$Res>(_value.parameters,
        (value) {
      return _then(_value.copyWith(parameters: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated(
    'Removed from the API documentation (deprecated and should not be used)')
@FreezedUnionValue('CHROMA_WAVE')
class _$WaveKeyboardEffect implements WaveKeyboardEffect {
  const _$WaveKeyboardEffect(
      [@JsonKey(name: DeviceEffect.parametersKey)
          this.parameters = const WaveKeyboardEffectParameters()]);

  factory _$WaveKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$_$WaveKeyboardEffectFromJson(json);

  @override
  @JsonKey(name: DeviceEffect.parametersKey)
  final WaveKeyboardEffectParameters parameters;

  @override
  String toString() {
    return 'KeyboardEffect.wave(parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WaveKeyboardEffect &&
            (identical(other.parameters, parameters) ||
                const DeepCollectionEquality()
                    .equals(other.parameters, parameters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(parameters);

  @JsonKey(ignore: true)
  @override
  $WaveKeyboardEffectCopyWith<WaveKeyboardEffect> get copyWith =>
      _$WaveKeyboardEffectCopyWithImpl<WaveKeyboardEffect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)
        static,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)
        custom,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return wave(parameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                StaticKeyboardEffectParameters parameters)?
        static,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors)?
        custom,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
    required TResult orElse(),
  }) {
    if (wave != null) {
      return wave(parameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyKeyboardEffect value) empty,
    required TResult Function(StaticKeyboardEffect value) static,
    required TResult Function(CustomKeyboardEffect value) custom,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return wave(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(WaveKeyboardEffect value)? wave,
    required TResult orElse(),
  }) {
    if (wave != null) {
      return wave(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WaveKeyboardEffectToJson(this)..['effect'] = 'CHROMA_WAVE';
  }
}

abstract class WaveKeyboardEffect implements KeyboardEffect {
  const factory WaveKeyboardEffect(
      [@JsonKey(name: DeviceEffect.parametersKey)
          WaveKeyboardEffectParameters parameters]) = _$WaveKeyboardEffect;

  factory WaveKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$WaveKeyboardEffect.fromJson;

  @JsonKey(name: DeviceEffect.parametersKey)
  WaveKeyboardEffectParameters get parameters =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WaveKeyboardEffectCopyWith<WaveKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}
