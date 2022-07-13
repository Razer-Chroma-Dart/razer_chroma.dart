import 'package:razer_chroma/razer_chroma.dart';
import 'package:razer_chroma_macos/src/driver.dart';

extension RgbColorUtils on RgbColor {
  /// Writes the color data to a `razer_rgb` struct.
  void write(razer_rgb struct) => struct
    ..r = r.round()
    ..g = g.round()
    ..b = b.round();
}
