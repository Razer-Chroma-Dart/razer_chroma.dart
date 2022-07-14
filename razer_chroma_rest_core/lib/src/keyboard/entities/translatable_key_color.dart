import 'package:collection/collection.dart';
import 'package:razer_chroma/razer_chroma.dart';

class TranslatableKeyColor {
  /// The typical row of the target keys.
  final int standardRow;

  /// The typical column of the target keys.
  final int standardColumn;

  final Set<RazerKey> keys;

  /// The color to display on the target keys.
  final Color color;

  const TranslatableKeyColor({
    required this.standardRow,
    required this.standardColumn,
    required this.keys,
    required this.color,
  });

  static List<List<TranslatableKeyColor?>> matrixFromJson(
    List<dynamic> json,
  ) {
    if (json.length > RazerKey.rowCount) {
      throw FormatException('Invalid row count!', json.length);
    }
    return List.generate(
      json.length,
      (rowId) {
        final row = json[rowId];
        if (row is! List) {
          throw FormatException('Expected a list of lists!', row, rowId);
        }
        if (row.length > RazerKey.columnCount) {
          throw FormatException('Invalid row size!', row.length);
        }
        return List.generate(
          row.length,
          (columnIndex) {
            final value = row[columnIndex];
            if (value is! int) {
              throw FormatException('Expected an integer!', value, columnIndex);
            }
            if (value & 0x01000000 == 0) return null;
            return TranslatableKeyColor(
              standardRow: rowId,
              standardColumn: columnIndex,
              keys: RazerKey.layout[rowId][columnIndex],
              color: bgrToColor(value & 0x00FFFFFF),
            );
          },
          growable: false,
        );
      },
      growable: false,
    );
  }

  static List<List<int>> matrixToJson(
    List<List<TranslatableKeyColor?>> matrix,
  ) =>
      matrix
          .map(
            (row) => row.map((translatableKeyColor) {
              if (translatableKeyColor == null) return 0;
              assert(
                RazerKey.layout.any(
                  (row) => row.any(
                    (razerKeySet) => const SetEquality()
                        .equals(translatableKeyColor.keys, razerKeySet),
                  ),
                ),
                'Unknown key set!',
              );
              return translatableKeyColor.color.toBgr() | 0x01000000;
            }).toList(growable: false),
          )
          .toList(growable: false);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslatableKeyColor &&
          runtimeType == other.runtimeType &&
          standardRow == other.standardRow &&
          standardColumn == other.standardColumn &&
          const SetEquality().equals(keys, other.keys);

  @override
  int get hashCode => Object.hash(
        standardRow,
        standardColumn,
        const SetEquality().hash(keys),
      );
}
