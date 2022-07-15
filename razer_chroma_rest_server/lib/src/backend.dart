import 'package:meta/meta.dart';
import 'package:razer_chroma_rest_core/razer_chroma_rest_core.dart';

/// A backend interface to provide functionality to the [RazerChromaRestServer].
///
/// [RazerChromaRestServer] does not communicate with Razer devices directly -
/// instead, device communication must be implemented by providing an
/// implementation of this class.
///
/// Any [RazerChromaApiException]s thrown inside functions that are called when
/// HTTP requests are received will be transformed into HTTP error responses.
/// (This functionality is implemented by the [apiErrorMiddleware].)
abstract class RazerChromaRestServerBackend {
  const RazerChromaRestServerBackend();

  /// Called when a client starts a session.
  ///
  /// Nothing is expected to be done by the backend when this is called; this is
  /// just some useful information.
  void sessionStarted(ClientDetails details) {}

  /// Called when a client stops a session.
  ///
  /// Nothing is expected to be done by the backend when this is called; this is
  /// just some useful information.
  void sessionStopped(ClientDetails details) {}

  /// Applies an empty keyboard effect.
  ///
  /// Returns `true` if the application is successful.
  bool keyboardEmptyEffect() => false;

  /// Applies a static keyboard color effect.
  ///
  /// Returns `true` if the application is successful.
  bool keyboardStaticEffect(Color color) => false;

  /// Applies a custom keyboard effect.
  ///
  /// [colors] is a list of 6 rows of 22 key colors to display on the keyboard.
  ///
  /// Returns `true` if the application is successful.
  bool keyboardCustomEffect(List<List<Color>> colors) => false;

  /// Applies a custom keyboard key effect.
  ///
  /// [colors] is an ordinary list of 6 rows of 22 key colors to display on the
  /// keyboard.
  ///
  /// [keys] is a list of 6 rows of 22 translatable key colors to display on the
  /// appropriate keys of newer keyboards.
  ///
  /// Returns `true` if the application is successful.
  ///
  /// The default implementation of this method does not map the translatable
  /// keys, instead using their typical locations and calling
  /// [keyboardCustomEffect].
  // TODO implement key translations in Dart
  bool keyboardCustomKeyEffect(
    List<List<Color>> colors,
    List<List<TranslatableKeyColor?>> keys,
  ) {
    final flattenedColors = List.generate(
      colors.length,
      (index) => List.of(colors[index], growable: false),
      growable: false,
    );
    for (final row in keys) {
      for (final key in row) {
        if (key == null) continue;
        flattenedColors[key.standardRow][key.standardColumn] = key.color;
      }
    }
    return keyboardCustomEffect(flattenedColors);
  }

  /// Applies a wave keyboard effect.
  ///
  /// Returns `true` if the application is successful.
  @Deprecated('The wave effect API is deprecated.')
  bool keyboardWaveEffect(WaveKeyboardEffectDirection direction) => false;
}

mixin LoggingRazerChromaRestServerBackendMixin on RazerChromaRestServerBackend {
  void log(String message);

  @override
  @mustCallSuper
  void sessionStarted(ClientDetails details) {
    log('Session started: $details');
  }

  @override
  @mustCallSuper
  void sessionStopped(ClientDetails details) {
    log('Session stopped: $details');
  }
}
