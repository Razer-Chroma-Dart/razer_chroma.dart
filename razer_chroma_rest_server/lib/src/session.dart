import 'dart:async';
import 'dart:io';

import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

/// An object used to keep track of a session.
class Session {
  final ClientDetails clientDetails;
  final HttpServer server;
  DateTime _lastHeartbeat;
  Timer heartbeatTimer;
  var _manualHeartbeatCounter = 0;
  final effects = <String, SessionEffectEntry>{};

  Session({
    required this.clientDetails,
    required this.server,
    required this.heartbeatTimer,
  }) : _lastHeartbeat = DateTime.now();

  /// The time since the last heartbeat was recorded.
  Duration get timeSinceLastHeartbeat =>
      DateTime.now().difference(_lastHeartbeat);

  /// Records a session heartbeat.
  ///
  /// When recording a heartbeat due to a manual heartbeat request, call
  /// [manualHeartbeatRecorded] after this function.
  void heartbeat() => _lastHeartbeat = DateTime.now();

  /// Records the recording of a manual session heartbeat.
  ///
  /// This should be called after recording heartbeats due to manual heartbeat
  /// requests.
  ///
  /// The return value increments after every call, starting at `0`.
  int manualHeartbeatRecorded() => _manualHeartbeatCounter++;
}

/// An object used to store session effect data.
///
/// [T] must be a general device effect type; that is, [KeyboardEffect] instead
/// of [StaticKeyboardEffect].
///
/// [T] can be used to accurately determine the intended effect type.
/// Say, for example, [effect] is of a type that implements both
/// [KeyboardEffect] and [MouseEffect]. [effect]'s type does not indicate which
/// device the effect should be applied to. [T], however, must be either
/// [KeyboardEffect] or [MouseEffect], indicating the device the effect should
/// be applied to.
class SessionEffectEntry<T extends DeviceEffect> {
  final T effect;

  SessionEffectEntry(this.effect) : assert(T == KeyboardEffect);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SessionEffectEntry &&
          runtimeType == other.runtimeType &&
          effect == other.effect;

  @override
  int get hashCode => effect.hashCode;
}
