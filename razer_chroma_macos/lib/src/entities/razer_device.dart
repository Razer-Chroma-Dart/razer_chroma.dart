import 'package:meta/meta.dart';
import 'package:razer_chroma/razer_chroma.dart';

import '/src/driver.dart' as driver;

class RazerMacOSDevice implements RazerDevice {
  @internal
  final driver.RazerDevice nativeRazerDevice;

  @override
  final RazerDeviceInfo deviceInfo;

  RazerMacOSDevice(this.nativeRazerDevice)
      : deviceInfo =
            RazerDevice.getDeviceInfoForProductId(nativeRazerDevice.productId);

  @override
  int get productId => nativeRazerDevice.productId;
}
