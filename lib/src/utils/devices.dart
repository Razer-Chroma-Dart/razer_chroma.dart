import 'dart:ffi' as ffi;

import '/src/driver.dart';

extension RazerDevicesUtils on RazerDevices {
  RazerDevice operator [](int index) {
    if (index >= size) throw RangeError.index(index, this, null, null, size);
    return devices.elementAt(index).ref;
  }

  RazerDevice getDeviceWithInternalDeviceId(int internalDeviceId) {
    for (var i = 0; i < size; ++i) {
      final device = devices.elementAt(i).ref;
      if (device.internalDeviceId == internalDeviceId) return device;
    }

    throw StateError(
        'No device with the internal device ID of $internalDeviceId exists!');
  }
}
