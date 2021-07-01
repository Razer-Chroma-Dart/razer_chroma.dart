// ignore_for_file: avoid_print

import 'package:meta/meta.dart';
import 'package:razer_chroma/razer_chroma.dart';
import 'package:razer_chroma_rest_server/razer_chroma_rest_server.dart' as rcr;

Future<void> main(List<String> arguments) async {
  print('Starting server...');
  final server =
      rcr.RazerChromaRestServer(const LoggingRazerChromaRestBackend());
  await server.start();
  print('Server started!');
}

/// A backend that logs all operations, and pretends to perform them
/// successfully.
class LoggingRazerChromaRestBackend extends rcr.RazerChromaRestServerBackend {
  const LoggingRazerChromaRestBackend();

  @mustCallSuper
  @override
  void sessionStarted(rcr.ClientDetails details) {
    print('Session started: $details');
  }

  @mustCallSuper
  @override
  void sessionStopped(rcr.ClientDetails details) {
    print('Session stopped: $details');
  }

  @mustCallSuper
  @override
  bool keyboardEmptyEffect() {
    print('Applying effect: keyboard empty');
    return true;
  }

  @mustCallSuper
  @override
  bool keyboardStaticEffect(Color color) {
    print('Applying effect: keyboard static');
    return true;
  }

  @mustCallSuper
  @override
  bool keyboardCustomEffect(List<List<Color>> colors) {
    print('Applying effect: keyboard custom');
    return true;
  }

  @mustCallSuper
  @override
  bool keyboardWaveEffect(rcr.WaveKeyboardEffectDirection direction) {
    print('Applying effect: keyboard wave ($direction)');
    return true;
  }
}
