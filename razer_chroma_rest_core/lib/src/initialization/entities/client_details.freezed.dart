// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientDetails _$ClientDetailsFromJson(Map<String, dynamic> json) {
  return _ClientDetails.fromJson(json);
}

/// @nodoc
mixin _$ClientDetails {
  /// Title of the application.
  ///
  /// See [maxTitleLength] for the maximum allowed length.
  ///
  /// Example: `Razer Chroma SDK RESTful Test Application`
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// A short description of the application.
  ///
  /// See [maxDescriptionLength] for the maximum allowed length.
  ///
  /// Example: `This is a REST interface test application`
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  Author get author => throw _privateConstructorUsedError;

  /// An set of supported devices. Must have at least one device type.
  @JsonKey(name: 'device_supported')
  Set<DeviceType> get supportedDevices => throw _privateConstructorUsedError;

  /// Application type.
  @JsonKey(name: 'category')
  ClientCategory get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientDetailsCopyWith<ClientDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientDetailsCopyWith<$Res> {
  factory $ClientDetailsCopyWith(
          ClientDetails value, $Res Function(ClientDetails) then) =
      _$ClientDetailsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'author') Author author,
      @JsonKey(name: 'device_supported') Set<DeviceType> supportedDevices,
      @JsonKey(name: 'category') ClientCategory category});

  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$ClientDetailsCopyWithImpl<$Res>
    implements $ClientDetailsCopyWith<$Res> {
  _$ClientDetailsCopyWithImpl(this._value, this._then);

  final ClientDetails _value;
  // ignore: unused_field
  final $Res Function(ClientDetails) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? supportedDevices = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      supportedDevices: supportedDevices == freezed
          ? _value.supportedDevices
          : supportedDevices // ignore: cast_nullable_to_non_nullable
              as Set<DeviceType>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ClientCategory,
    ));
  }

  @override
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$$_ClientDetailsCopyWith<$Res>
    implements $ClientDetailsCopyWith<$Res> {
  factory _$$_ClientDetailsCopyWith(
          _$_ClientDetails value, $Res Function(_$_ClientDetails) then) =
      __$$_ClientDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'author') Author author,
      @JsonKey(name: 'device_supported') Set<DeviceType> supportedDevices,
      @JsonKey(name: 'category') ClientCategory category});

  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$_ClientDetailsCopyWithImpl<$Res>
    extends _$ClientDetailsCopyWithImpl<$Res>
    implements _$$_ClientDetailsCopyWith<$Res> {
  __$$_ClientDetailsCopyWithImpl(
      _$_ClientDetails _value, $Res Function(_$_ClientDetails) _then)
      : super(_value, (v) => _then(v as _$_ClientDetails));

  @override
  _$_ClientDetails get _value => super._value as _$_ClientDetails;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? supportedDevices = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_ClientDetails(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      supportedDevices: supportedDevices == freezed
          ? _value._supportedDevices
          : supportedDevices // ignore: cast_nullable_to_non_nullable
              as Set<DeviceType>,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ClientCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientDetails implements _ClientDetails {
  const _$_ClientDetails(
      {@JsonKey(name: 'title')
          required this.title,
      @JsonKey(name: 'description')
          required this.description,
      @JsonKey(name: 'author')
          required this.author,
      @JsonKey(name: 'device_supported')
          required final Set<DeviceType> supportedDevices,
      @JsonKey(name: 'category')
          required this.category})
      : assert(title.length <= ClientDetails.maxTitleLength),
        assert(description.length <= ClientDetails.maxDescriptionLength),
        _supportedDevices = supportedDevices;

  factory _$_ClientDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ClientDetailsFromJson(json);

  /// Title of the application.
  ///
  /// See [maxTitleLength] for the maximum allowed length.
  ///
  /// Example: `Razer Chroma SDK RESTful Test Application`
  @override
  @JsonKey(name: 'title')
  final String title;

  /// A short description of the application.
  ///
  /// See [maxDescriptionLength] for the maximum allowed length.
  ///
  /// Example: `This is a REST interface test application`
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'author')
  final Author author;

  /// An set of supported devices. Must have at least one device type.
  final Set<DeviceType> _supportedDevices;

  /// An set of supported devices. Must have at least one device type.
  @override
  @JsonKey(name: 'device_supported')
  Set<DeviceType> get supportedDevices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_supportedDevices);
  }

  /// Application type.
  @override
  @JsonKey(name: 'category')
  final ClientCategory category;

  @override
  String toString() {
    return 'ClientDetails(title: $title, description: $description, author: $author, supportedDevices: $supportedDevices, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientDetails &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality()
                .equals(other._supportedDevices, _supportedDevices) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(_supportedDevices),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_ClientDetailsCopyWith<_$_ClientDetails> get copyWith =>
      __$$_ClientDetailsCopyWithImpl<_$_ClientDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientDetailsToJson(this);
  }
}

abstract class _ClientDetails implements ClientDetails {
  const factory _ClientDetails(
      {@JsonKey(name: 'title')
          required final String title,
      @JsonKey(name: 'description')
          required final String description,
      @JsonKey(name: 'author')
          required final Author author,
      @JsonKey(name: 'device_supported')
          required final Set<DeviceType> supportedDevices,
      @JsonKey(name: 'category')
          required final ClientCategory category}) = _$_ClientDetails;

  factory _ClientDetails.fromJson(Map<String, dynamic> json) =
      _$_ClientDetails.fromJson;

  @override

  /// Title of the application.
  ///
  /// See [maxTitleLength] for the maximum allowed length.
  ///
  /// Example: `Razer Chroma SDK RESTful Test Application`
  @JsonKey(name: 'title')
  String get title;
  @override

  /// A short description of the application.
  ///
  /// See [maxDescriptionLength] for the maximum allowed length.
  ///
  /// Example: `This is a REST interface test application`
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'author')
  Author get author;
  @override

  /// An set of supported devices. Must have at least one device type.
  @JsonKey(name: 'device_supported')
  Set<DeviceType> get supportedDevices;
  @override

  /// Application type.
  @JsonKey(name: 'category')
  ClientCategory get category;
  @override
  @JsonKey(ignore: true)
  _$$_ClientDetailsCopyWith<_$_ClientDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
