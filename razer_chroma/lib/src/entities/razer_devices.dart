import 'package:razer_chroma/src/entities/razer_device.dart';

/// A [List] of [RazerDevice]s.
abstract class RazerDevices<T extends RazerDevice> implements List<T> {
  const RazerDevices();
}
