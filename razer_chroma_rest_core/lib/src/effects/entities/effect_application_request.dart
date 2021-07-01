import 'package:freezed_annotation/freezed_annotation.dart';

part 'effect_application_request.freezed.dart';
part 'effect_application_request.g.dart';

/// A request to apply a single effect associated with an [id].
@freezed
class SingleEffectApplicationRequest with _$SingleEffectApplicationRequest {
  const factory SingleEffectApplicationRequest({
    /// The effect identifier.
    @JsonKey(name: 'id') required String id,
  }) = _SinglApplicationCreationRequest;

  factory SingleEffectApplicationRequest.fromJson(Map<String, dynamic> json) =>
      _$SingleEffectApplicationRequestFromJson(json);
}
