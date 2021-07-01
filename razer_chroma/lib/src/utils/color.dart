import 'package:color/color.dart';

extension BgrUtils on Color {
  /// Converts a color to a 0xBBGGRR integer, used commonly when communicating
  /// with Razer devices.
  int toBgr() {
    final rgb = toRgbColor();
    return rgb.b.round() << 8 * 2 &
        rgb.g.round() << 8 * 1 &
        rgb.r.round() << 8 * 0;
  }
}

/// Converts a 0xBBGGRR integer, used commonly when communicating with Razer
/// devices, to a [Color] object.
Color bgrToColor(int bgr) => Color.rgb(
      (bgr & 0x0000FF) >> 8 * 0,
      (bgr & 0x00FF00) >> 8 * 1,
      (bgr & 0xFF0000) >> 8 * 2,
    );
