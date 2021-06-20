import 'dart:io';

import 'package:path/path.dart';
import 'package:razer_chroma_macos/razer_chroma_macos.dart' as rcm;

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
  final razerChromaMac = rcm.Client(libraryPath);

  // Open all devices, and select the first keyboard.
  razerChromaMac.openAllDevices();
  late final rcm.RazerDevice? device;
  for (var i = 0; i < razerChromaMac.openDevices.size; ++i) {
    final potentialDevice = razerChromaMac.openDevices[i];
    if (rcm.DeviceInfo.products[potentialDevice.productId]!.mainType ==
        rcm.DeviceInfoType.keyboard) {
      device = potentialDevice;
      break;
    }
  }
  if (device == null) {
    stderr.writeln('Could not find a keyboard!');
    exit(1);
  }

  // Retrieve device information.
  final deviceInfo = rcm.DeviceInfo.products[device.productId]!;
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
