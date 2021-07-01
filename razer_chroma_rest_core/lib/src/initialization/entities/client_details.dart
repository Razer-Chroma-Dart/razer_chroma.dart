import 'package:freezed_annotation/freezed_annotation.dart';

import '/src/initialization/entities/author.dart';
import '/src/initialization/entities/client_category.dart';
import '/src/initialization/entities/device_type.dart';

part 'client_details.freezed.dart';
part 'client_details.g.dart';

/// Client information.
@freezed
class ClientDetails with _$ClientDetails {
  /// The maximum allowed length of [title].
  static const maxTitleLength = 64;

  /// The maximum allowed length of [description].
  static const maxDescriptionLength = 256;

  @Assert('title.length <= ClientDetails.maxTitleLength')
  @Assert('description.length <= ClientDetails.maxDescriptionLength')
  const factory ClientDetails({
    /// Title of the application.
    ///
    /// See [maxTitleLength] for the maximum allowed length.
    ///
    /// Example: `Razer Chroma SDK RESTful Test Application`
    @JsonKey(name: 'title') required String title,

    /// A short description of the application.
    ///
    /// See [maxDescriptionLength] for the maximum allowed length.
    ///
    /// Example: `This is a REST interface test application`
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'author') required Author author,

    /// An set of supported devices. Must have at least one device type.
    @JsonKey(name: 'device_supported')
        required Set<DeviceType> supportedDevices,

    /// Application type.
    @JsonKey(name: 'category') required ClientCategory category,
  }) = _ClientDetails;

  factory ClientDetails.fromJson(Map<String, dynamic> json) =>
      _$ClientDetailsFromJson(json);
}
