// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyboard_effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyboardEffect _$KeyboardEffectFromJson(Map<String, dynamic> json) {
  switch (json['effect']) {
    case 'CHROMA_NONE':
      return EmptyKeyboardEffect.fromJson(json);
    case 'CHROMA_STATIC':
      return StaticKeyboardEffect.fromJson(json);
    case 'CHROMA_CUSTOM':
      return CustomKeyboardEffect.fromJson(json);
    case 'CHROMA_CUSTOM_KEY':
      return CustomKeyKeyboardEffect.fromJson(json);
    case 'CHROMA_WAVE':
      return WaveKeyboardEffect.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'effect', 'KeyboardEffect',
          'Invalid union type "${json['effect']}"!');
  }
}

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
                CustomKeyKeyboardEffectParameters parameters)
        customKey,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
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
    required TResult Function(CustomKeyKeyboardEffect value) customKey,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
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
abstract class _$$EmptyKeyboardEffectCopyWith<$Res> {
  factory _$$EmptyKeyboardEffectCopyWith(_$EmptyKeyboardEffect value,
          $Res Function(_$EmptyKeyboardEffect) then) =
      __$$EmptyKeyboardEffectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements _$$EmptyKeyboardEffectCopyWith<$Res> {
  __$$EmptyKeyboardEffectCopyWithImpl(
      _$EmptyKeyboardEffect _value, $Res Function(_$EmptyKeyboardEffect) _then)
      : super(_value, (v) => _then(v as _$EmptyKeyboardEffect));

  @override
  _$EmptyKeyboardEffect get _value => super._value as _$EmptyKeyboardEffect;
}

/// @nodoc
@JsonSerializable()
class _$EmptyKeyboardEffect implements EmptyKeyboardEffect {
  const _$EmptyKeyboardEffect({final String? $type})
      : $type = $type ?? 'CHROMA_NONE';

  factory _$EmptyKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$$EmptyKeyboardEffectFromJson(json);

  @JsonKey(name: 'effect')
  final String $type;

  @override
  String toString() {
    return 'KeyboardEffect.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyKeyboardEffect);
  }

  @JsonKey(ignore: true)
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
                CustomKeyKeyboardEffectParameters parameters)
        customKey,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
  }) {
    return empty?.call();
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
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
    required TResult Function(CustomKeyKeyboardEffect value) customKey,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
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
    return _$$EmptyKeyboardEffectToJson(this);
  }
}

abstract class EmptyKeyboardEffect implements KeyboardEffect {
  const factory EmptyKeyboardEffect() = _$EmptyKeyboardEffect;

  factory EmptyKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$EmptyKeyboardEffect.fromJson;
}

/// @nodoc
abstract class _$$StaticKeyboardEffectCopyWith<$Res> {
  factory _$$StaticKeyboardEffectCopyWith(_$StaticKeyboardEffect value,
          $Res Function(_$StaticKeyboardEffect) then) =
      __$$StaticKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey)
          StaticKeyboardEffectParameters parameters});

  $StaticKeyboardEffectParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$StaticKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements _$$StaticKeyboardEffectCopyWith<$Res> {
  __$$StaticKeyboardEffectCopyWithImpl(_$StaticKeyboardEffect _value,
      $Res Function(_$StaticKeyboardEffect) _then)
      : super(_value, (v) => _then(v as _$StaticKeyboardEffect));

  @override
  _$StaticKeyboardEffect get _value => super._value as _$StaticKeyboardEffect;

  @override
  $Res call({
    Object? parameters = freezed,
  }) {
    return _then(_$StaticKeyboardEffect(
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
class _$StaticKeyboardEffect implements StaticKeyboardEffect {
  const _$StaticKeyboardEffect(
      @JsonKey(name: DeviceEffect.parametersKey) this.parameters,
      {final String? $type})
      : $type = $type ?? 'CHROMA_STATIC';

  factory _$StaticKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$$StaticKeyboardEffectFromJson(json);

  @override
  @JsonKey(name: DeviceEffect.parametersKey)
  final StaticKeyboardEffectParameters parameters;

  @JsonKey(name: 'effect')
  final String $type;

  @override
  String toString() {
    return 'KeyboardEffect.static(parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticKeyboardEffect &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parameters));

  @JsonKey(ignore: true)
  @override
  _$$StaticKeyboardEffectCopyWith<_$StaticKeyboardEffect> get copyWith =>
      __$$StaticKeyboardEffectCopyWithImpl<_$StaticKeyboardEffect>(
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
                CustomKeyKeyboardEffectParameters parameters)
        customKey,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return static(parameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
  }) {
    return static?.call(parameters);
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
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
    required TResult Function(CustomKeyKeyboardEffect value) customKey,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return static(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
  }) {
    return static?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
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
    return _$$StaticKeyboardEffectToJson(this);
  }
}

abstract class StaticKeyboardEffect implements KeyboardEffect {
  const factory StaticKeyboardEffect(
          @JsonKey(name: DeviceEffect.parametersKey)
              final StaticKeyboardEffectParameters parameters) =
      _$StaticKeyboardEffect;

  factory StaticKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$StaticKeyboardEffect.fromJson;

  @JsonKey(name: DeviceEffect.parametersKey)
  StaticKeyboardEffectParameters get parameters;
  @JsonKey(ignore: true)
  _$$StaticKeyboardEffectCopyWith<_$StaticKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomKeyboardEffectCopyWith<$Res> {
  factory _$$CustomKeyboardEffectCopyWith(_$CustomKeyboardEffect value,
          $Res Function(_$CustomKeyboardEffect) then) =
      __$$CustomKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey) List<List<int>> colors});
}

/// @nodoc
class __$$CustomKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements _$$CustomKeyboardEffectCopyWith<$Res> {
  __$$CustomKeyboardEffectCopyWithImpl(_$CustomKeyboardEffect _value,
      $Res Function(_$CustomKeyboardEffect) _then)
      : super(_value, (v) => _then(v as _$CustomKeyboardEffect));

  @override
  _$CustomKeyboardEffect get _value => super._value as _$CustomKeyboardEffect;

  @override
  $Res call({
    Object? colors = freezed,
  }) {
    return _then(_$CustomKeyboardEffect(
      colors == freezed
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomKeyboardEffect implements CustomKeyboardEffect {
  _$CustomKeyboardEffect(
      @JsonKey(name: DeviceEffect.parametersKey) final List<List<int>> colors,
      {final String? $type})
      : _colors = colors,
        $type = $type ?? 'CHROMA_CUSTOM';

  factory _$CustomKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$$CustomKeyboardEffectFromJson(json);

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  final List<List<int>> _colors;

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @override
  @JsonKey(name: DeviceEffect.parametersKey)
  List<List<int>> get colors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  @JsonKey(name: 'effect')
  final String $type;

  @override
  String toString() {
    return 'KeyboardEffect.custom(colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomKeyboardEffect &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  _$$CustomKeyboardEffectCopyWith<_$CustomKeyboardEffect> get copyWith =>
      __$$CustomKeyboardEffectCopyWithImpl<_$CustomKeyboardEffect>(
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
                CustomKeyKeyboardEffectParameters parameters)
        customKey,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return custom(colors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
  }) {
    return custom?.call(colors);
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
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
    required TResult Function(CustomKeyKeyboardEffect value) customKey,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
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
    return _$$CustomKeyboardEffectToJson(this);
  }
}

abstract class CustomKeyboardEffect implements KeyboardEffect {
  factory CustomKeyboardEffect(
      @JsonKey(name: DeviceEffect.parametersKey)
          final List<List<int>> colors) = _$CustomKeyboardEffect;

  factory CustomKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$CustomKeyboardEffect.fromJson;

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @JsonKey(name: DeviceEffect.parametersKey)
  List<List<int>> get colors;
  @JsonKey(ignore: true)
  _$$CustomKeyboardEffectCopyWith<_$CustomKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomKeyKeyboardEffectCopyWith<$Res> {
  factory _$$CustomKeyKeyboardEffectCopyWith(_$CustomKeyKeyboardEffect value,
          $Res Function(_$CustomKeyKeyboardEffect) then) =
      __$$CustomKeyKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey)
          CustomKeyKeyboardEffectParameters parameters});

  $CustomKeyKeyboardEffectParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$CustomKeyKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements _$$CustomKeyKeyboardEffectCopyWith<$Res> {
  __$$CustomKeyKeyboardEffectCopyWithImpl(_$CustomKeyKeyboardEffect _value,
      $Res Function(_$CustomKeyKeyboardEffect) _then)
      : super(_value, (v) => _then(v as _$CustomKeyKeyboardEffect));

  @override
  _$CustomKeyKeyboardEffect get _value =>
      super._value as _$CustomKeyKeyboardEffect;

  @override
  $Res call({
    Object? parameters = freezed,
  }) {
    return _then(_$CustomKeyKeyboardEffect(
      parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as CustomKeyKeyboardEffectParameters,
    ));
  }

  @override
  $CustomKeyKeyboardEffectParametersCopyWith<$Res> get parameters {
    return $CustomKeyKeyboardEffectParametersCopyWith<$Res>(_value.parameters,
        (value) {
      return _then(_value.copyWith(parameters: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomKeyKeyboardEffect implements CustomKeyKeyboardEffect {
  const _$CustomKeyKeyboardEffect(
      @JsonKey(name: DeviceEffect.parametersKey) this.parameters,
      {final String? $type})
      : $type = $type ?? 'CHROMA_CUSTOM_KEY';

  factory _$CustomKeyKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$$CustomKeyKeyboardEffectFromJson(json);

  @override
  @JsonKey(name: DeviceEffect.parametersKey)
  final CustomKeyKeyboardEffectParameters parameters;

  @JsonKey(name: 'effect')
  final String $type;

  @override
  String toString() {
    return 'KeyboardEffect.customKey(parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomKeyKeyboardEffect &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parameters));

  @JsonKey(ignore: true)
  @override
  _$$CustomKeyKeyboardEffectCopyWith<_$CustomKeyKeyboardEffect> get copyWith =>
      __$$CustomKeyKeyboardEffectCopyWithImpl<_$CustomKeyKeyboardEffect>(
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
                CustomKeyKeyboardEffectParameters parameters)
        customKey,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return customKey(parameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
  }) {
    return customKey?.call(parameters);
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
    required TResult orElse(),
  }) {
    if (customKey != null) {
      return customKey(parameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyKeyboardEffect value) empty,
    required TResult Function(StaticKeyboardEffect value) static,
    required TResult Function(CustomKeyboardEffect value) custom,
    required TResult Function(CustomKeyKeyboardEffect value) customKey,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return customKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
  }) {
    return customKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
    required TResult orElse(),
  }) {
    if (customKey != null) {
      return customKey(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomKeyKeyboardEffectToJson(this);
  }
}

abstract class CustomKeyKeyboardEffect implements KeyboardEffect {
  const factory CustomKeyKeyboardEffect(
          @JsonKey(name: DeviceEffect.parametersKey)
              final CustomKeyKeyboardEffectParameters parameters) =
      _$CustomKeyKeyboardEffect;

  factory CustomKeyKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$CustomKeyKeyboardEffect.fromJson;

  @JsonKey(name: DeviceEffect.parametersKey)
  CustomKeyKeyboardEffectParameters get parameters;
  @JsonKey(ignore: true)
  _$$CustomKeyKeyboardEffectCopyWith<_$CustomKeyKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WaveKeyboardEffectCopyWith<$Res> {
  factory _$$WaveKeyboardEffectCopyWith(_$WaveKeyboardEffect value,
          $Res Function(_$WaveKeyboardEffect) then) =
      __$$WaveKeyboardEffectCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: DeviceEffect.parametersKey)
          WaveKeyboardEffectParameters parameters});

  $WaveKeyboardEffectParametersCopyWith<$Res> get parameters;
}

/// @nodoc
class __$$WaveKeyboardEffectCopyWithImpl<$Res>
    extends _$KeyboardEffectCopyWithImpl<$Res>
    implements _$$WaveKeyboardEffectCopyWith<$Res> {
  __$$WaveKeyboardEffectCopyWithImpl(
      _$WaveKeyboardEffect _value, $Res Function(_$WaveKeyboardEffect) _then)
      : super(_value, (v) => _then(v as _$WaveKeyboardEffect));

  @override
  _$WaveKeyboardEffect get _value => super._value as _$WaveKeyboardEffect;

  @override
  $Res call({
    Object? parameters = freezed,
  }) {
    return _then(_$WaveKeyboardEffect(
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
class _$WaveKeyboardEffect implements WaveKeyboardEffect {
  const _$WaveKeyboardEffect(
      [@JsonKey(name: DeviceEffect.parametersKey)
          this.parameters = const WaveKeyboardEffectParameters(),
      final String? $type])
      : $type = $type ?? 'CHROMA_WAVE';

  factory _$WaveKeyboardEffect.fromJson(Map<String, dynamic> json) =>
      _$$WaveKeyboardEffectFromJson(json);

  @override
  @JsonKey(name: DeviceEffect.parametersKey)
  final WaveKeyboardEffectParameters parameters;

  @JsonKey(name: 'effect')
  final String $type;

  @override
  String toString() {
    return 'KeyboardEffect.wave(parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WaveKeyboardEffect &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(parameters));

  @JsonKey(ignore: true)
  @override
  _$$WaveKeyboardEffectCopyWith<_$WaveKeyboardEffect> get copyWith =>
      __$$WaveKeyboardEffectCopyWithImpl<_$WaveKeyboardEffect>(
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
                CustomKeyKeyboardEffectParameters parameters)
        customKey,
    required TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)
        wave,
  }) {
    return wave(parameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
    TResult Function(
            @JsonKey(name: DeviceEffect.parametersKey)
                WaveKeyboardEffectParameters parameters)?
        wave,
  }) {
    return wave?.call(parameters);
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
                CustomKeyKeyboardEffectParameters parameters)?
        customKey,
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
    required TResult Function(CustomKeyKeyboardEffect value) customKey,
    required TResult Function(WaveKeyboardEffect value) wave,
  }) {
    return wave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
    TResult Function(WaveKeyboardEffect value)? wave,
  }) {
    return wave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyKeyboardEffect value)? empty,
    TResult Function(StaticKeyboardEffect value)? static,
    TResult Function(CustomKeyboardEffect value)? custom,
    TResult Function(CustomKeyKeyboardEffect value)? customKey,
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
    return _$$WaveKeyboardEffectToJson(this);
  }
}

abstract class WaveKeyboardEffect implements KeyboardEffect {
  const factory WaveKeyboardEffect(
          [@JsonKey(name: DeviceEffect.parametersKey)
              final WaveKeyboardEffectParameters parameters]) =
      _$WaveKeyboardEffect;

  factory WaveKeyboardEffect.fromJson(Map<String, dynamic> json) =
      _$WaveKeyboardEffect.fromJson;

  @JsonKey(name: DeviceEffect.parametersKey)
  WaveKeyboardEffectParameters get parameters;
  @JsonKey(ignore: true)
  _$$WaveKeyboardEffectCopyWith<_$WaveKeyboardEffect> get copyWith =>
      throw _privateConstructorUsedError;
}
