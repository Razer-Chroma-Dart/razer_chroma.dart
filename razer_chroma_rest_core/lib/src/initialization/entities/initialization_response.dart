import 'package:freezed_annotation/freezed_annotation.dart';

part 'initialization_response.freezed.dart';
part 'initialization_response.g.dart';

/// The response given by the server after a session has been initialized.
@freezed
class InitializationResponse with _$InitializationResponse {
  const factory InitializationResponse({
    ///	Identifier for this session.
    ///
    /// Example: `123456`
    @JsonKey(name: 'sessionid') required int sessionId,

    /// Uniform Resource Identifier for this instance.
    ///
    /// Example: `http://localhost:123456/chromasdk`
    @JsonKey(name: 'uri') required Uri uri,
  }) = _InitializationResponse;

  factory InitializationResponse.fromJson(Map<String, dynamic> json) =>
      _$InitializationResponseFromJson(json);
}
