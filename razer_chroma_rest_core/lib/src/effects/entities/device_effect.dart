import 'package:meta/meta.dart';

/// A class representing a device effect.
abstract class DeviceEffect {
  const DeviceEffect._();

  /// The key to use for the effect in `toJson`.
  @internal
  static const effectKey = 'effect';

  /// The key to use for the parameters in `toJson`.
  @internal
  static const parametersKey = 'param';

  Map<String, dynamic> toJson();
}
