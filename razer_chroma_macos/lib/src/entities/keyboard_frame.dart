import 'dart:typed_data';

import 'package:razer_chroma/razer_chroma.dart';

typedef KeyboardFrameGenerator = Iterable<KeyboardFrameSegmentGenerator>;

class KeyboardFrameSegmentGenerator {
  static const _rowCount = 6;
  static const _columnCount = 22;

  final int rowId;
  final int startColumn;
  final Iterable<RgbColor> colorIterable;

  const KeyboardFrameSegmentGenerator(
    this.rowId,
    this.startColumn,
    this.colorIterable,
  )   : assert(startColumn <= _columnCount - 1),
        assert(startColumn + colorIterable.length - 1 <= _columnCount - 1);

  /// True if the [KeyboardFrameSegmentGenerator] has a pre-computed
  /// [colorIterable].
  bool get precomputed => colorIterable is List<RgbColor>;

  /// Returns a copy of the [KeyboardFrameSegmentGenerator] with a pre-computed
  /// [colorIterable].
  KeyboardFrameSegmentGenerator precompute() => KeyboardFrameSegmentGenerator(
        rowId,
        startColumn,
        colorIterable.toList(growable: false),
      );

  /// Represents the [KeyboardFrameSegmentGenerator] output as binary frame
  /// data.
  ///
  /// This only applies to the row specified by [rowId].
  /// To generate frame data for multiple segments, see
  /// [KeyboardFrameSerialization.toFrameData].
  Uint8List toFrameData() {
    final colorCount = colorIterable.length;
    final rowData = Uint8List(3 + colorCount * 3);
    var offset = 0;
    // Write the ROW_ID value.
    rowData[offset++] = rowId;
    // Write the START_COL value.
    rowData[offset++] = startColumn;
    // Write the STOP_COL value (inclusive).
    rowData[offset++] = startColumn + colorCount - 1;
    // Write the RGB values.
    for (final color in colorIterable) {
      rowData[offset++] = color.r.round();
      rowData[offset++] = color.g.round();
      rowData[offset++] = color.b.round();
    }
    return rowData;
  }

  /// Creates a [KeyboardFrameGenerator] using a 6x22 color matrix.
  ///
  /// [colors] is a list of rows of colors.
  ///
  /// The resultant [Iterable] and the [KeyboardFrameSegmentGenerator]s emitted
  /// from it have efficient [Iterable.length] implementations.
  static KeyboardFrameGenerator matrixFrame(List<List<Color>> colors) {
    assert(
      colors.length == _rowCount,
      'There must be $_rowCount rows in the matrix.',
    );
    assert(
      colors.every((row) => row.length == _columnCount),
      'There must be $_columnCount columns in each row.',
    );
    return Iterable.generate(
      _rowCount,
      (rowId) {
        final row = colors[rowId];
        RgbColor getRgbColor(int columnIndex) => row[columnIndex].toRgbColor();
        return KeyboardFrameSegmentGenerator(
          rowId,
          0,
          Iterable.generate(_columnCount, getRgbColor),
        );
      },
    );
  }

  /// Creates a [KeyboardFrameGenerator] using a single [color].
  ///
  /// The resultant [Iterable] and the [KeyboardFrameSegmentGenerator]s emitted
  /// from it have efficient [Iterable.length] implementations.
  static KeyboardFrameGenerator staticFrame(Color color) {
    final rgbColor = color.toRgbColor();
    RgbColor getRgbColor(int columnIndex) => rgbColor;
    return Iterable.generate(
      _rowCount,
      (rowId) => KeyboardFrameSegmentGenerator(
        rowId,
        0,
        Iterable.generate(_columnCount, getRgbColor),
      ),
    );
  }
}

extension KeyboardFrameSerialization on KeyboardFrameGenerator {
  /// Represents the [KeyboardFrameGenerator] output as binary frame data.
  ///
  /// This function is fastest when this and each segment's color iterable has
  /// an efficient [Iterable.length] implementation, which can be obtained
  /// through the use of something like a [List] or [Iterable.generate] result.
  /// If this is not the case, consider using the [precompute] method
  /// beforehand.
  Uint8List toFrameData() {
    final frameBuilder = BytesBuilder(copy: false);
    for (final segment in this) {
      frameBuilder.add(segment.toFrameData());
    }
    return frameBuilder.toBytes();
  }

  bool get precomputed => every((segment) => segment.precomputed);

  KeyboardFrameGenerator precompute() =>
      map((segment) => segment.precompute()).toList(growable: false);
}
