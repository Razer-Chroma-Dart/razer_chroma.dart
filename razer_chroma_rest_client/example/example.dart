import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:circular_buffer/circular_buffer.dart';
import 'package:razer_chroma_rest_client/razer_chroma_rest_client.dart' as rcr;

// ignore_for_file: avoid_print

Future<void> main() async {
  print('EPILEPSY WARNING: This example cycles through colors rapidly.');

  // Create the client.
  final client = rcr.RazerChromaClient();

  // Get the version information.
  final version = await client.getVersion();
  print('Using version: $version.');

  // Start a session.
  await client.connect(const rcr.ClientDetails(
    title: 'Dart Razer Chroma SDK example',
    description: 'Dart Razer Chroma SDK example description',
    author: rcr.Author(
      name: 'hacker1024',
      contact: 'https://github.com/hacker1024',
    ),
    supportedDevices: {rcr.DeviceType.keyboard},
    category: rcr.ClientCategory.application,
  ));

  // Catch heartbeat errors.
  client.onHeartbeatError = (error) {
    print('Heartbeat error: $error');
    return true;
  };

  // Handle SIGINT interrupts.
  late final StreamSubscription<void> interruptSubscription;
  interruptSubscription = ProcessSignal.sigint.watch().listen((_) {})
    ..asFuture().then((_) async {
      // Close the client.
      // This ends the session automatically.
      client.close();

      await interruptSubscription.cancel();
    });

  // A small delay may need to be awaited before effects work - they will appear
  // successful, but not actually apply if set too soon.
  //
  // This applies to the official backend only.
  await Future<void>.delayed(const Duration(milliseconds: 600));

  // Create and apply a wave effect.
  final id = await client.createKeyboardEffect(const rcr.WaveKeyboardEffect());
  if (id != null) await client.applyEffect(id);
  await Future<void>.delayed(const Duration(seconds: 2));

  // Cycle through some colors. (EPILEPSY WARNING)
  Future<void> cycleColor(int color) async {
    await client.setKeyboardEffect(
        rcr.StaticKeyboardEffect(rcr.StaticKeyboardEffectParameters(color)));
    await Future<void>.delayed(const Duration(milliseconds: 1000 ~/ 6));
  }

  await cycleColor(0x0000FF);
  await cycleColor(0x00FF00);
  await cycleColor(0xFF0000);
  await cycleColor(0x00FFFF);
  await cycleColor(0xFFFF00);
  await cycleColor(0xFF00FF);

  // Cycle through some grids of random colors. (EPILEPSY WARNING)
  Future<void> cycleRandom() async {
    final random = Random();
    final customColors = List.generate(
      6,
      (_) => List.generate(
        22,
        (_) => random.nextInt(0xFFFFFF + 1),
        growable: false,
      ),
      growable: false,
    );
    await client.setKeyboardEffect(rcr.CustomKeyboardEffect(customColors));
    await Future<void>.delayed(const Duration(milliseconds: 1000 ~/ 6));
  }

  for (var i = 0; i < 6; ++i) {
    await cycleRandom();
  }

  // Play a wave effect implemented entirely in Dart.
  final softwareWave = SoftwareWave.fps(
    onNewFrame: (wave) {
      client.setKeyboardEffect(
        rcr.CustomKeyboardEffect(
          List.filled(
            6,
            wave,
            growable: false,
          ),
        ),
      );
    },
    fps: 25,
  )..play();

  // Wait for input and pause the wave effect.
  print('Press return to continue...');
  await stdin.first;
  softwareWave.pause();

  // Close the client.
  // This ends the session automatically.
  client.close();

  await interruptSubscription.cancel();
}

/// A class to create a wave effect in software.
class SoftwareWave {
  final void Function(List<int> wave)? onNewFrame;
  final Duration frameInterval;
  final int width;

  final CircularBuffer<int> wave;
  Timer? _waveTimer;

  SoftwareWave({
    this.onNewFrame,
    this.frameInterval =
        const Duration(microseconds: Duration.microsecondsPerSecond ~/ 60),
    this.width = 22,
  }) : wave = CircularBuffer(width)..addAll(_generateInitialWave(width));

  SoftwareWave.fps({
    void Function(List<int> wave)? onNewFrame,
    num fps = 60,
    int width = 22,
  }) : this(
          onNewFrame: onNewFrame,
          frameInterval:
              Duration(microseconds: Duration.microsecondsPerSecond ~/ fps),
          width: width,
        );

  void _tick() {
    wave.add(wave[0]);
    onNewFrame?.call(wave);
  }

  void play() => _waveTimer = Timer.periodic(frameInterval, (_) => _tick());

  void pause() => _waveTimer?.cancel();

  static Iterable<int> _generateInitialWave(int width) {
    int hue2bgr(num hue) {
      final h = hue / 60;
      final hi = h.floor() % 6;

      final f = h - h.floor();
      final q = (255 * (1 - f)).round();
      final t = (255 * f).round();

      final int b;
      final int g;
      final int r;

      switch (hi) {
        case 5:
          b = q;
          g = 0;
          r = 255;
          break;
        case 4:
          b = 255;
          g = 0;
          r = t;
          break;
        case 3:
          b = 255;
          g = q;
          r = 0;
          break;
        case 2:
          b = t;
          g = 255;
          r = 0;
          break;
        case 1:
          b = 0;
          g = 255;
          r = q;
          break;
        case 0:
        default:
          b = 0;
          g = t;
          r = 255;
          break;
      }

      return r | g << 8 | b << 16;
    }

    final gradientStep = 360 / width;
    return Iterable.generate(width, (index) => hue2bgr(gradientStep * index));
  }
}
