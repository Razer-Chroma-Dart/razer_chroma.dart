import 'package:freezed_annotation/freezed_annotation.dart';

part 'sdk_version.freezed.dart';
part 'sdk_version.g.dart';

/// SDK version information.
@freezed
class SdkVersion with _$SdkVersion {
  const factory SdkVersion({
    @JsonKey(name: 'core') required String core,
    @JsonKey(name: 'device') required String device,
    @JsonKey(name: 'version') required String version,
  }) = _SdkVersion;

  factory SdkVersion.fromJson(Map<String, dynamic> json) =>
      _$SdkVersionFromJson(json);

  /// The version of the Razer Chroma SDK REST API that this package is designed
  /// for.
  static const target = SdkVersion(
    core: '3.20.02',
    device: '3.20.02',
    version: '3.20.03',
  );
}
