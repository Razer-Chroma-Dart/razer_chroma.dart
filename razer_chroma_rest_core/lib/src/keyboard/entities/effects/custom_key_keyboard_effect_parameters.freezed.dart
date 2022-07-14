// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_key_keyboard_effect_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomKeyKeyboardEffectParameters _$CustomKeyKeyboardEffectParametersFromJson(
    Map<String, dynamic> json) {
  return _CustomKeyKeyboardEffectParameters.fromJson(json);
}

/// @nodoc
mixin _$CustomKeyKeyboardEffectParameters {
  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @JsonKey(name: 'color')
  List<List<int>> get colors => throw _privateConstructorUsedError;

  /// Translatable key colors to display on the keyboard.
  @JsonKey(
      name: 'key',
      fromJson: TranslatableKeyColor.matrixFromJson,
      toJson: TranslatableKeyColor.matrixToJson)
  List<List<TranslatableKeyColor?>> get keys =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomKeyKeyboardEffectParametersCopyWith<CustomKeyKeyboardEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomKeyKeyboardEffectParametersCopyWith<$Res> {
  factory $CustomKeyKeyboardEffectParametersCopyWith(
          CustomKeyKeyboardEffectParameters value,
          $Res Function(CustomKeyKeyboardEffectParameters) then) =
      _$CustomKeyKeyboardEffectParametersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'color')
          List<List<int>> colors,
      @JsonKey(name: 'key', fromJson: TranslatableKeyColor.matrixFromJson, toJson: TranslatableKeyColor.matrixToJson)
          List<List<TranslatableKeyColor?>> keys});
}

/// @nodoc
class _$CustomKeyKeyboardEffectParametersCopyWithImpl<$Res>
    implements $CustomKeyKeyboardEffectParametersCopyWith<$Res> {
  _$CustomKeyKeyboardEffectParametersCopyWithImpl(this._value, this._then);

  final CustomKeyKeyboardEffectParameters _value;
  // ignore: unused_field
  final $Res Function(CustomKeyKeyboardEffectParameters) _then;

  @override
  $Res call({
    Object? colors = freezed,
    Object? keys = freezed,
  }) {
    return _then(_value.copyWith(
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      keys: keys == freezed
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<List<TranslatableKeyColor?>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomKeyKeyboardEffectParametersCopyWith<$Res>
    implements $CustomKeyKeyboardEffectParametersCopyWith<$Res> {
  factory _$$_CustomKeyKeyboardEffectParametersCopyWith(
          _$_CustomKeyKeyboardEffectParameters value,
          $Res Function(_$_CustomKeyKeyboardEffectParameters) then) =
      __$$_CustomKeyKeyboardEffectParametersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'color')
          List<List<int>> colors,
      @JsonKey(name: 'key', fromJson: TranslatableKeyColor.matrixFromJson, toJson: TranslatableKeyColor.matrixToJson)
          List<List<TranslatableKeyColor?>> keys});
}

/// @nodoc
class __$$_CustomKeyKeyboardEffectParametersCopyWithImpl<$Res>
    extends _$CustomKeyKeyboardEffectParametersCopyWithImpl<$Res>
    implements _$$_CustomKeyKeyboardEffectParametersCopyWith<$Res> {
  __$$_CustomKeyKeyboardEffectParametersCopyWithImpl(
      _$_CustomKeyKeyboardEffectParameters _value,
      $Res Function(_$_CustomKeyKeyboardEffectParameters) _then)
      : super(_value, (v) => _then(v as _$_CustomKeyKeyboardEffectParameters));

  @override
  _$_CustomKeyKeyboardEffectParameters get _value =>
      super._value as _$_CustomKeyKeyboardEffectParameters;

  @override
  $Res call({
    Object? colors = freezed,
    Object? keys = freezed,
  }) {
    return _then(_$_CustomKeyKeyboardEffectParameters(
      colors: colors == freezed
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      keys: keys == freezed
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<List<TranslatableKeyColor?>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomKeyKeyboardEffectParameters
    implements _CustomKeyKeyboardEffectParameters {
  const _$_CustomKeyKeyboardEffectParameters(
      {@JsonKey(name: 'color')
          required final List<List<int>> colors,
      @JsonKey(name: 'key', fromJson: TranslatableKeyColor.matrixFromJson, toJson: TranslatableKeyColor.matrixToJson)
          required final List<List<TranslatableKeyColor?>> keys})
      : _colors = colors,
        _keys = keys;

  factory _$_CustomKeyKeyboardEffectParameters.fromJson(
          Map<String, dynamic> json) =>
      _$$_CustomKeyKeyboardEffectParametersFromJson(json);

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  final List<List<int>> _colors;

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @override
  @JsonKey(name: 'color')
  List<List<int>> get colors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  /// Translatable key colors to display on the keyboard.
  final List<List<TranslatableKeyColor?>> _keys;

  /// Translatable key colors to display on the keyboard.
  @override
  @JsonKey(
      name: 'key',
      fromJson: TranslatableKeyColor.matrixFromJson,
      toJson: TranslatableKeyColor.matrixToJson)
  List<List<TranslatableKeyColor?>> get keys {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  String toString() {
    return 'CustomKeyKeyboardEffectParameters(colors: $colors, keys: $keys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomKeyKeyboardEffectParameters &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_keys));

  @JsonKey(ignore: true)
  @override
  _$$_CustomKeyKeyboardEffectParametersCopyWith<
          _$_CustomKeyKeyboardEffectParameters>
      get copyWith => __$$_CustomKeyKeyboardEffectParametersCopyWithImpl<
          _$_CustomKeyKeyboardEffectParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomKeyKeyboardEffectParametersToJson(this);
  }
}

abstract class _CustomKeyKeyboardEffectParameters
    implements CustomKeyKeyboardEffectParameters {
  const factory _CustomKeyKeyboardEffectParameters(
      {@JsonKey(name: 'color')
          required final List<List<int>> colors,
      @JsonKey(name: 'key', fromJson: TranslatableKeyColor.matrixFromJson, toJson: TranslatableKeyColor.matrixToJson)
          required final List<List<TranslatableKeyColor?>> keys}) = _$_CustomKeyKeyboardEffectParameters;

  factory _CustomKeyKeyboardEffectParameters.fromJson(
          Map<String, dynamic> json) =
      _$_CustomKeyKeyboardEffectParameters.fromJson;

  @override

  /// A list of 6 rows of 22 key colors to display on the keyboard.
  /// Colors are in the 0xBBGGRR format.
  @JsonKey(name: 'color')
  List<List<int>> get colors;
  @override

  /// Translatable key colors to display on the keyboard.
  @JsonKey(
      name: 'key',
      fromJson: TranslatableKeyColor.matrixFromJson,
      toJson: TranslatableKeyColor.matrixToJson)
  List<List<TranslatableKeyColor?>> get keys;
  @override
  @JsonKey(ignore: true)
  _$$_CustomKeyKeyboardEffectParametersCopyWith<
          _$_CustomKeyKeyboardEffectParameters>
      get copyWith => throw _privateConstructorUsedError;
}
