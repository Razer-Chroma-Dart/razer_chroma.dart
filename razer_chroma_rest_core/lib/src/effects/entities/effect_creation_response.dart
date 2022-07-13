import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:razer_chroma_rest_core/src/api/entities/result_response.dart';

part 'effect_creation_response.freezed.dart';
part 'effect_creation_response.g.dart';

/// The response given when an effect is created.
@freezed
class EffectCreationResponse
    with _$EffectCreationResponse, ResultResponseInfo
    implements ResultResponse {
  const factory EffectCreationResponse({
    @JsonKey(name: 'result') required int result,

    /// An identifier representing the effect.
    ///
    /// Typically a v4 UUID.
    @JsonKey(name: 'id') required String? id,
  }) = _EffectCreationResponse;

  const EffectCreationResponse._();

  factory EffectCreationResponse.fromJson(Map<String, dynamic> json) =>
      _$EffectCreationResponseFromJson(json);
}
