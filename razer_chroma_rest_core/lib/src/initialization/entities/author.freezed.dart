// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  /// Author name. (max length 64)
  ///
  /// Example: `Chroma Developer`
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Author contact. (max length 64)
  ///
  /// Example: `www.razerzone.com`
  @JsonKey(name: 'contact')
  String get contact => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'contact') String contact});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res> implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  final Author _value;
  // ignore: unused_field
  final $Res Function(Author) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? contact = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthorCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$_AuthorCopyWith(_$_Author value, $Res Function(_$_Author) then) =
      __$$_AuthorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'contact') String contact});
}

/// @nodoc
class __$$_AuthorCopyWithImpl<$Res> extends _$AuthorCopyWithImpl<$Res>
    implements _$$_AuthorCopyWith<$Res> {
  __$$_AuthorCopyWithImpl(_$_Author _value, $Res Function(_$_Author) _then)
      : super(_value, (v) => _then(v as _$_Author));

  @override
  _$_Author get _value => super._value as _$_Author;

  @override
  $Res call({
    Object? name = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$_Author(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Author implements _Author {
  const _$_Author(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'contact') required this.contact})
      : assert(name.length <= 64),
        assert(contact.length <= 64);

  factory _$_Author.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorFromJson(json);

  /// Author name. (max length 64)
  ///
  /// Example: `Chroma Developer`
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Author contact. (max length 64)
  ///
  /// Example: `www.razerzone.com`
  @override
  @JsonKey(name: 'contact')
  final String contact;

  @override
  String toString() {
    return 'Author(name: $name, contact: $contact)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Author &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.contact, contact));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(contact));

  @JsonKey(ignore: true)
  @override
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      __$$_AuthorCopyWithImpl<_$_Author>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'contact') required final String contact}) = _$_Author;

  factory _Author.fromJson(Map<String, dynamic> json) = _$_Author.fromJson;

  @override

  /// Author name. (max length 64)
  ///
  /// Example: `Chroma Developer`
  @JsonKey(name: 'name')
  String get name;
  @override

  /// Author contact. (max length 64)
  ///
  /// Example: `www.razerzone.com`
  @JsonKey(name: 'contact')
  String get contact;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorCopyWith<_$_Author> get copyWith =>
      throw _privateConstructorUsedError;
}
