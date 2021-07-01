// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'client_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClientDetails _$ClientDetailsFromJson(Map<String, dynamic> json) {
  return _ClientDetails.fromJson(json);
}

/// @nodoc
class _$ClientDetailsTearOff {
  const _$ClientDetailsTearOff();

  _ClientDetails call(
      {@JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'description')
          required String description,
      @JsonKey(name: 'author')
          required Author author,
      @JsonKey(name: 'device_supported')
          required Set<DeviceType> supportedDevices,
      @JsonKey(name: 'category')
          required ClientCategory category}) {
    return _ClientDetails(
      title: title,
      description: description,
      author: author,
      supportedDevices: supportedDevices,
      category: category,
    );
  }

  ClientDetails fromJson(Map<String, Object> json) {
    return ClientDetails.fromJson(json);
  }
}

/// @nodoc
const $ClientDetails = _$ClientDetailsTearOff();

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
abstract class _$ClientDetailsCopyWith<$Res>
    implements $ClientDetailsCopyWith<$Res> {
  factory _$ClientDetailsCopyWith(
          _ClientDetails value, $Res Function(_ClientDetails) then) =
      __$ClientDetailsCopyWithImpl<$Res>;
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
class __$ClientDetailsCopyWithImpl<$Res>
    extends _$ClientDetailsCopyWithImpl<$Res>
    implements _$ClientDetailsCopyWith<$Res> {
  __$ClientDetailsCopyWithImpl(
      _ClientDetails _value, $Res Function(_ClientDetails) _then)
      : super(_value, (v) => _then(v as _ClientDetails));

  @override
  _ClientDetails get _value => super._value as _ClientDetails;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? author = freezed,
    Object? supportedDevices = freezed,
    Object? category = freezed,
  }) {
    return _then(_ClientDetails(
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
}

/// @nodoc
@JsonSerializable()
class _$_ClientDetails implements _ClientDetails {
  const _$_ClientDetails(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'device_supported') required this.supportedDevices,
      @JsonKey(name: 'category') required this.category})
      : assert(title.length <= ClientDetails.maxTitleLength),
        assert(description.length <= ClientDetails.maxDescriptionLength);

  factory _$_ClientDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_ClientDetailsFromJson(json);

  @override

  /// Title of the application.
  ///
  /// See [maxTitleLength] for the maximum allowed length.
  ///
  /// Example: `Razer Chroma SDK RESTful Test Application`
  @JsonKey(name: 'title')
  final String title;
  @override

  /// A short description of the application.
  ///
  /// See [maxDescriptionLength] for the maximum allowed length.
  ///
  /// Example: `This is a REST interface test application`
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'author')
  final Author author;
  @override

  /// An set of supported devices. Must have at least one device type.
  @JsonKey(name: 'device_supported')
  final Set<DeviceType> supportedDevices;
  @override

  /// Application type.
  @JsonKey(name: 'category')
  final ClientCategory category;

  @override
  String toString() {
    return 'ClientDetails(title: $title, description: $description, author: $author, supportedDevices: $supportedDevices, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClientDetails &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.supportedDevices, supportedDevices) ||
                const DeepCollectionEquality()
                    .equals(other.supportedDevices, supportedDevices)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(supportedDevices) ^
      const DeepCollectionEquality().hash(category);

  @JsonKey(ignore: true)
  @override
  _$ClientDetailsCopyWith<_ClientDetails> get copyWith =>
      __$ClientDetailsCopyWithImpl<_ClientDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClientDetailsToJson(this);
  }
}

abstract class _ClientDetails implements ClientDetails {
  const factory _ClientDetails(
      {@JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'description')
          required String description,
      @JsonKey(name: 'author')
          required Author author,
      @JsonKey(name: 'device_supported')
          required Set<DeviceType> supportedDevices,
      @JsonKey(name: 'category')
          required ClientCategory category}) = _$_ClientDetails;

  factory _ClientDetails.fromJson(Map<String, dynamic> json) =
      _$_ClientDetails.fromJson;

  @override

  /// Title of the application.
  ///
  /// See [maxTitleLength] for the maximum allowed length.
  ///
  /// Example: `Razer Chroma SDK RESTful Test Application`
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override

  /// A short description of the application.
  ///
  /// See [maxDescriptionLength] for the maximum allowed length.
  ///
  /// Example: `This is a REST interface test application`
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'author')
  Author get author => throw _privateConstructorUsedError;
  @override

  /// An set of supported devices. Must have at least one device type.
  @JsonKey(name: 'device_supported')
  Set<DeviceType> get supportedDevices => throw _privateConstructorUsedError;
  @override

  /// Application type.
  @JsonKey(name: 'category')
  ClientCategory get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClientDetailsCopyWith<_ClientDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
