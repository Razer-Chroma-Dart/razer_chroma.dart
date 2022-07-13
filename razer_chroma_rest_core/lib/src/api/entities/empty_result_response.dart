import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:razer_chroma_rest_core/src/api/entities/result_response.dart';

part 'empty_result_response.freezed.dart';
part 'empty_result_response.g.dart';

/// An empty response with a result code.
@freezed
class EmptyResultResponse
    with _$EmptyResultResponse, ResultResponseInfo
    implements ResultResponse {
  const factory EmptyResultResponse({
    /// The result code.
    @JsonKey(name: 'result') required int result,
  }) = _EmptyResultResponse;

  const EmptyResultResponse._();

  factory EmptyResultResponse.fromJson(Map<String, dynamic> json) =>
      _$EmptyResultResponseFromJson(json);
}
