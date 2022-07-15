import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:razer_chroma_rest_server/razer_chroma_rest_server.dart';
import 'package:razer_chroma_rest_server_macos/razer_chroma_rest_server_macos.dart';

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

  final backend = MacOSRazerChromaRestBackend.fromDriverLibraryPath(
    libraryPath,
    stdout.writeln,
  );
  final server = RazerChromaRestServer(backend);
  await server.start();
  stdout.writeln('Opened.');

  late final StreamSubscription<void> sigintSubscription;
  sigintSubscription = ProcessSignal.sigint.watch().listen((_) async {
    sigintSubscription.cancel();
    await server.stop();
    stdout.writeln('Closed.');
  });
}
