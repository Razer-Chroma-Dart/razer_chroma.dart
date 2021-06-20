import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path/path.dart';
import 'package:razer_chroma_macos/razer_chroma_macos.dart';

Future<void> main(List<String> arguments) async {
  // Locate the driver library.
  final String libraryPath;
  if (arguments.isEmpty) {
    libraryPath =
        join(File(Platform.script.path).parent.path, 'librazermacos.so');
  } else {
    libraryPath = arguments[0];
  }
  final libraryFile = File(libraryPath);
  if (!await libraryFile.exists()) {
    stderr.writeln('librazermacos could not be found at "$libraryPath"!');
    exit(1);
  }

  // Set up a client.
  final razerChromaMac = RazerMacOSClient(libraryPath);

  // Open all devices, and select the first keyboard.
  razerChromaMac.openAllDevices();
  final RazerDevice? device = razerChromaMac.openDevices.firstWhereOrNull(
      (device) => device.deviceInfo.mainType == RazerDeviceType.keyboard);
  if (device == null) {
    stderr.writeln('Could not find a keyboard!');
    exit(1);
  }

  // Retrieve device information.
  final deviceInfo = RazerDeviceInfo.products[device.productId]!;
  print('Found keyboard: ${deviceInfo.name}.');

  // Retrieve the keyboard brightness.
  final kbdBrightness = razerChromaMac.kbdGetBrightness(device);
  print('Keyboard brightness is $kbdBrightness%.');

  // Apply a wave effect.
  print('Applying wave effect...');
  razerChromaMac.kbdSetModeWave(device);

  // Close open devices.
  razerChromaMac.closeAllDevices();
}
