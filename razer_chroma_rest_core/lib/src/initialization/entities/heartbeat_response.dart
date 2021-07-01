import 'package:freezed_annotation/freezed_annotation.dart';

part 'heartbeat_response.freezed.dart';
part 'heartbeat_response.g.dart';

/// The response given following a heartbeat PUT request.
///
/// This response is given following a PUT request to '$sessionUri/heartbeat'.
///
/// The response is not defined in the API documentation, but this is what the
/// official Razer implementation responds with.
@freezed
class HeartbeatResponse with _$HeartbeatResponse {
  const factory HeartbeatResponse({
    /// A counter that increments with every heartbeat response.
    @JsonKey(name: 'tick') required int tick,
  }) = _HeartbeatResponse;

  factory HeartbeatResponse.fromJson(Map<String, dynamic> json) =>
      _$HeartbeatResponseFromJson(json);
}
