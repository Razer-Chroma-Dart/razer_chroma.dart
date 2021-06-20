import 'dart:io';

import 'package:path/path.dart';
import 'package:razer_chroma_macos/razer_chroma_macos.dart' as rcm;

/// A port of librazermacos's sample_cli.c example.
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

  razerChromaMac.openAllDevices();
  print('${razerChromaMac.openDevices.size} Razer device(s) found:');
  for (var i = 0; i < razerChromaMac.openDevices.size; ++i) {
    final device = razerChromaMac.openDevices[i];
    print('0x${device.productId.toRadixString(16).padLeft(4, '0')}');
  }
}
