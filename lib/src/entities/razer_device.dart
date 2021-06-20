import 'package:meta/meta.dart';

import '/src/device_info.dart';
import '/src/driver.dart' as driver;

/// A Razer Chroma device.
class RazerDevice {
  @internal
  final driver.RazerDevice nativeRazerDevice;

  /// A [DeviceInfo] instance containing information about the
  /// device.
  final RazerDeviceInfo deviceInfo;

  RazerDevice(this.nativeRazerDevice)
      : deviceInfo = RazerDeviceInfo.products[nativeRazerDevice.productId] ??
            (throw UnimplementedError(
                'The device with product ID 0x${nativeRazerDevice.productId.toRadixString(16).padLeft(4, '0')} is unknown! Please file an issue.'));

  /// The device's USB product ID.
  int get productId => nativeRazerDevice.productId;
}
