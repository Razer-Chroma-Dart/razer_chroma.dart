import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:razer_chroma/razer_chroma.dart';
import 'package:razer_chroma_macos/src/client.dart';
import 'package:razer_chroma_macos/src/driver.dart' as driver;
import 'package:razer_chroma_macos/src/entities/razer_device.dart';
import 'package:razer_chroma_macos/src/utils/color.dart';

mixin KeyboardApi on BaseClient {
  void kbdSetModeNone(RazerMacOSDevice device) =>
      binding.razer_attr_write_mode_none(
        device.nativeRazerDevice.usbDevice,
        nullptr,
        0,
      );

  void kbdSetModeSpectrum(RazerMacOSDevice device) =>
      binding.razer_attr_write_mode_spectrum(
        device.nativeRazerDevice.usbDevice,
        nullptr,
        0,
      );

  void kbdSetModeWave(
    RazerMacOSDevice device, {
    bool rightToLeft = false,
    int speed = 0x28,
  }) {
    final directionPointer = malloc<Char>();
    directionPointer.value = rightToLeft ? 0x32 : 0x31;
    binding.razer_attr_write_mode_wave(
      device.nativeRazerDevice.usbDevice,
      directionPointer,
      sizeOf<Char>(),
      speed,
    );
    malloc.free(directionPointer);
  }

  void kbdSetModeStatic(
    RazerMacOSDevice device,
    Color color, {
    bool store = true,
  }) {
    final rgbPointer = malloc<driver.razer_rgb>();
    color.toRgbColor().write(rgbPointer.ref);
    (store
        ? binding.razer_attr_write_mode_static
        : binding.razer_attr_write_mode_static_no_store)(
      device.nativeRazerDevice.usbDevice,
      rgbPointer.cast(),
      3,
    );
    malloc.free(rgbPointer);
  }

  void kbdSetModeReactive(
    RazerMacOSDevice device,
    Color color, {
    int speed = 0x28,
  }) {
    final bufSize = sizeOf<Uint8>() + sizeOf<driver.razer_rgb>();
    final bufPointer = malloc.allocate<Uint8>(bufSize);
    bufPointer.elementAt(0).value = speed;
    color
        .toRgbColor()
        .write(bufPointer.elementAt(1).cast<driver.razer_rgb>().ref);
    binding.razer_attr_write_mode_reactive(
      device.nativeRazerDevice.usbDevice,
      bufPointer.cast(),
      bufSize,
    );
    malloc.free(bufPointer);
  }

  void kbdSetModeBreathe(
    RazerMacOSDevice device, [
    Color? color1,
    Color? color2,
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
      bufSize = colorCount * sizeOf<driver.razer_rgb>();
      final colorPointer =
          bufPointer = malloc.allocate<driver.razer_rgb>(bufSize);
      // Single color mode.
      color1.toRgbColor().write(colorPointer.elementAt(0).ref);
      // Dual color mode.
      color2?.toRgbColor().write(colorPointer.elementAt(1).ref);
    }
    binding.razer_attr_write_mode_breath(
      device.nativeRazerDevice.usbDevice,
      bufPointer.cast(),
      bufSize,
    );
    malloc.free(bufPointer);
  }

  int kbdGetBrightness(RazerMacOSDevice device) => binding
      .razer_attr_read_set_brightness(device.nativeRazerDevice.usbDevice);

  void kbdSetBrightness(RazerMacOSDevice device, int brightness) {
    assert(brightness >= 0 && brightness <= 100);
    binding.razer_attr_write_set_brightness(
      device.nativeRazerDevice.usbDevice,
      brightness,
      sizeOf<Uint8>(),
    );
  }

  void kbdSetModeStarlight(
    RazerMacOSDevice device, [
    int speed = 0x28,
    Color? color1,
    Color? color2,
  ]) {
    assert(speed >= 0 && speed <= 0xFF);
    assert(color1 != null || color2 == null);
    final bufSize = sizeOf<Uint8>() +
        (color1 == null
                ? 0
                : color2 == null
                    ? 1
                    : 2) *
            sizeOf<driver.razer_rgb>();
    final bufPointer = malloc<Uint8>(bufSize);
    // Random color mode.
    bufPointer.elementAt(0).value = speed;
    if (color1 != null) {
      // A color mode is being set; calculate the color pointer.
      final colorPointer = bufPointer.elementAt(1).cast<driver.razer_rgb>();
      // Single color mode.
      color1.toRgbColor().write(colorPointer.elementAt(0).ref);
      // Dual color mode.
      color2?.toRgbColor().write(colorPointer.elementAt(1).ref);
    }
    binding.razer_attr_write_mode_starlight(
      device.nativeRazerDevice.usbDevice,
      bufPointer.cast(),
      bufSize,
    );
    malloc.free(bufPointer);
  }

  void kbdSetModeCustom(RazerMacOSDevice device) =>
      binding.razer_attr_write_mode_custom(
        device.nativeRazerDevice.usbDevice,
        nullptr,
        0,
      );

  /// Display a custom frame on the keyboard.
  ///
  /// Format: `ROW_ID START_COL STOP_COL RGB...`
  ///
  /// Note: This is a very low-level API, for fine-grained, optimized control.
  /// See [kbdSetCustomMatrix] for an higher-level API that does the same thing.
  void kbdSetCustomFrame(RazerMacOSDevice device, Uint8List data) {
    final dataSize = data.length * sizeOf<Uint8>();
    final dataPointer = malloc.allocate<Uint8>(dataSize);
    dataPointer.asTypedList(data.length).setAll(0, data);
    binding.razer_attr_write_matrix_custom_frame(
      device.nativeRazerDevice.usbDevice,
      dataPointer.cast(),
      dataSize,
    );
    malloc.free(dataPointer);
  }

  /// Display a custom 6x22 color matrix on the keyboard.
  ///
  /// Note: This function sends the entire 6x22 frame in every invocation.
  /// For finer control, to write to specific areas, use [kbdSetCustomFrame].
  void kbdSetCustomMatrix(RazerMacOSDevice device, List<List<Color>> colors) {
    assert(colors.length == 6, 'There must be 6 rows in the matrix.');
    assert(
      colors.every((row) => row.length == 22),
      'There must be 22 columns in each row.',
    );
    const rowCount = 6;
    const columnCount = 22;

    var offset = 0;
    final frame = Uint8List(
      // (ROW_ID + START_COL + STOP_COL + (R + G + B) * columnCount) * rowCount
      (3 + 3 * columnCount) * rowCount,
    );
    for (var rowId = 0; rowId < rowCount; ++rowId) {
      final row = colors[rowId];
      // Write the ROW_ID value.
      frame[offset++] = rowId;
      // Write the START_COL value.
      frame[offset++] = 0;
      // Write the STOP_COL value.
      frame[offset++] = columnCount - 1;
      // Write the RGB values.
      for (var columnIndex = 0; columnIndex < columnCount; ++columnIndex) {
        final rgbColor = row[columnIndex].toRgbColor();
        frame[offset++] = rgbColor.r.round();
        frame[offset++] = rgbColor.g.round();
        frame[offset++] = rgbColor.b.round();
      }
    }

    kbdSetCustomFrame(device, frame);
  }
}
