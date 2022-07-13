import 'package:meta/meta.dart';
import 'package:razer_chroma/src/device_info.dart';

/// A Razer Chroma device.
abstract class RazerDevice {
  const RazerDevice();

  /// A [DeviceInfo] instance containing information about the
  /// device.
  RazerDeviceInfo get deviceInfo;

  /// The device's USB product ID.
  int get productId;

  /// Implementations that obtain their [DeviceInfo] from [DeviceInfo.products]
  /// should do so through this function, which handles unknown IDs.
  @protected
  static RazerDeviceInfo getDeviceInfoForProductId(int productId) =>
      RazerDeviceInfo.products[productId] ??
      (throw UnimplementedError(
        'The device with product ID 0x${productId.toRadixString(16).padLeft(4, '0')} is unknown! Please file an issue.',
      ));
}
