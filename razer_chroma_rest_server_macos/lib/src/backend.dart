import 'package:razer_chroma_macos/razer_chroma_macos.dart';
import 'package:razer_chroma_rest_server/razer_chroma_rest_server.dart';

class MacOSRazerChromaRestBackend extends RazerChromaRestServerBackend
    with LoggingRazerChromaRestServerBackendMixin {
  final RazerMacOSClient _nativeClient;
  final void Function(String message)? _log;

  MacOSRazerChromaRestBackend(this._nativeClient, [this._log]);

  MacOSRazerChromaRestBackend.fromDriverLibraryPath(
    String driverLibraryPath, [
    void Function(String message)? log,
  ]) : this(RazerMacOSClient(driverLibraryPath), log);

  Iterable<RazerMacOSDevice> get _openKeyboards =>
      _nativeClient.openDevices.where(
        (device) => device.deviceInfo.mainType == RazerDeviceType.keyboard,
      );

  @override
  void log(String message) => _log?.call(message);

  @override
  void sessionStarted(ClientDetails details) {
    _nativeClient.openAllDevices();
    super.sessionStarted(details);
  }

  @override
  void sessionStopped(ClientDetails details) {
    _nativeClient.closeAllDevices();
    super.sessionStopped(details);
  }

  @override
  bool keyboardEmptyEffect() {
    _openKeyboards.forEach(_nativeClient.kbdSetModeNone);
    return true;
  }

  @override
  bool keyboardWaveEffect(WaveKeyboardEffectDirection direction) {
    for (final keyboard in _openKeyboards) {
      _nativeClient.kbdSetModeWave(
        keyboard,
        rightToLeft: direction == WaveKeyboardEffectDirection.rightToLeft,
      );
    }
    return true;
  }

  @override
  bool keyboardStaticEffect(Color color) =>
      // Use a custom frame to change the color with no animation.
      _keyboardCustomFrame(KeyboardFrameSegmentGenerator.staticFrame(color));

  @override
  bool keyboardCustomEffect(List<List<Color>> colors) =>
      _keyboardCustomFrame(KeyboardFrameSegmentGenerator.matrixFrame(colors));

  bool _keyboardCustomFrame(KeyboardFrameGenerator frameGenerator) {
    final frameData = frameGenerator.toFrameData();
    for (final keyboard in _openKeyboards) {
      _nativeClient.kbdSetCustomFrame(keyboard, frameData);
      _nativeClient.kbdSetModeCustom(keyboard);
    }
    return true;
  }
}
