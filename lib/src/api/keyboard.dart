import 'dart:ffi';
import 'dart:typed_data';

import 'package:color/color.dart';
import 'package:ffi/ffi.dart';

import '/src/client.dart';
import '/src/driver.dart';
import '/src/utils/color.dart';

mixin KeyboardApi on BaseClient {
  void kbdSetModeNone(RazerDevice device) =>
      driver.razer_attr_write_mode_none(device.usbDevice, nullptr, 0);

  void kbdSetModeSpectrum(RazerDevice device) =>
      driver.razer_attr_write_mode_spectrum(device.usbDevice, nullptr, 0);

  void kbdSetModeWave(
    RazerDevice device, {
    bool rightToLeft = false,
    int speed = 0x28,
  }) {
    final directionPointer = malloc<Int8>();
    directionPointer.value = rightToLeft ? 0x32 : 0x31;
    driver.razer_attr_write_mode_wave(
        device.usbDevice, directionPointer, sizeOf<Int8>(), speed);
    malloc.free(directionPointer);
  }

  void kbdSetModeStatic(
    RazerDevice device,
    RgbColor color, {
    bool store = true,
  }) {
    final rgbPointer = malloc<razer_rgb>();
    color.write(rgbPointer.ref);
    (store
            ? driver.razer_attr_write_mode_static
            : driver.razer_attr_write_mode_static_no_store)(
        device.usbDevice, rgbPointer.cast(), 3);
    malloc.free(rgbPointer);
  }

  void kbdSetModeReactive(
    RazerDevice device,
    RgbColor color, {
    int speed = 0x28,
  }) {
    final bufSize = sizeOf<Uint8>() + sizeOf<razer_rgb>();
    final bufPointer = malloc.allocate<Uint8>(bufSize);
    bufPointer.elementAt(0).value = speed;
    color.write(bufPointer.elementAt(1).cast<razer_rgb>().ref);
    driver.razer_attr_write_mode_reactive(
        device.usbDevice, bufPointer.cast(), bufSize);
    malloc.free(bufPointer);
  }

  void kbdSetModeBreathe(
    RazerDevice device, [
    RgbColor? color1,
    RgbColor? color2,
  ]) {
    assert(color1 != null || color2 == null);
    final int bufSize;
    final Pointer bufPointer;
    if (color1 == null) {
      // Random color mode.
      assert(color2 == null);
      bufSize = sizeOf<Uint8>();
      bufPointer = malloc<Uint8>()..value = 0;
    } else {
      final colorCount = color2 == null ? 1 : 2;
      bufSize = colorCount * sizeOf<razer_rgb>();
      final colorPointer = bufPointer = malloc.allocate<razer_rgb>(bufSize);
      // Single color mode.
      color1.write(colorPointer.elementAt(0).ref);
      // Dual color mode.
      color2?.write(colorPointer.elementAt(1).ref);
    }
    driver.razer_attr_write_mode_breath(
        device.usbDevice, bufPointer.cast(), bufSize);
    malloc.free(bufPointer);
  }

  int kbdGetBrightness(RazerDevice device) =>
      driver.razer_attr_read_set_brightness(device.usbDevice);

  void kbdSetBrightness(RazerDevice device, int brightness) {
    assert(brightness >= 0 && brightness <= 100);
    driver.razer_attr_write_set_brightness(
        device.usbDevice, brightness, sizeOf<Uint8>());
  }

  void kbdSetModeStarlight(
    RazerDevice device, [
    int speed = 0x28,
    RgbColor? color1,
    RgbColor? color2,
  ]) {
    assert(speed >= 0 && speed <= 0xFF);
    assert(color1 != null || color2 == null);
    final bufSize = sizeOf<Uint8>() +
        (color1 == null
                ? 0
                : color2 == null
                    ? 1
                    : 2) *
            sizeOf<razer_rgb>();
    final bufPointer = malloc<Uint8>(bufSize);
    // Random color mode.
    bufPointer.elementAt(0).value = speed;
    if (color1 != null) {
      // A color mode is being set; calculate the color pointer.
      final colorPointer = bufPointer.elementAt(1).cast<razer_rgb>();
      // Single color mode.
      color1.write(colorPointer.elementAt(0).ref);
      // Dual color mode.
      color2?.write(colorPointer.elementAt(1).ref);
    }
    driver.razer_attr_write_mode_starlight(
        device.usbDevice, bufPointer.cast(), bufSize);
    malloc.free(bufPointer);
  }

  void kbdSetModeCustom(RazerDevice device) =>
      driver.razer_attr_write_mode_custom(device.usbDevice, nullptr, 0);

  /// Display a custom frame on the keyboard.
  ///
  /// Format: `ROW_ID START_COL STOP_COL RGB...`
  void kbdSetCustomFrame(RazerDevice device, Uint8List data) {
    final dataSize = data.length * sizeOf<Uint8>();
    final dataPointer = malloc.allocate<Uint8>(dataSize);
    dataPointer.asTypedList(data.length).setAll(0, data);
    driver.razer_attr_write_matrix_custom_frame(
        device.usbDevice, dataPointer.cast(), dataSize);
    malloc.free(dataPointer);
  }
}
