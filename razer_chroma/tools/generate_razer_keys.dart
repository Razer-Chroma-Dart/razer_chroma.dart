import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:recase/recase.dart';
import 'package:universal_html/html.dart' hide Platform;
import 'package:universal_html/parsing.dart';

/// A tool to generate razer key mappings by parsing the C++ SDK API documentation.
Future<void> main() async {
  // Retrieve and parse the keyboard namespace documentation HTML.
  final htmlDocument = await http
      .readBytes(
        Uri(
          scheme: 'https',
          host: 'assets.razerzone.com',
          path:
              'dev_portal/C%2B%2B/html/en/namespace_chroma_s_d_k_1_1_keyboard.html',
        ),
      )
      .then(utf8.decode) // https://stackoverflow.com/a/61497293
      .then(parseHtmlDocument);

  // Parse the key documentation.
  final razerKeyDocumentation = Map.fromEntries(
    htmlDocument.body!
        .querySelectorAll('.memtitle')
        .firstWhere(
          (element) => element.nodes.whereType<Text>().first.text == 'RZKEY',
        )
        .nextElementSibling!
        .getElementsByClassName('fieldtable')
        .cast<TableElement>()
        .first
        .rows
        .skip(1) // Skip the header row.
        .map(
      (row) {
        final name = row.querySelector('.fieldname a')!.nextNode!.text!.trim();
        final documentation = row.querySelector('.fielddoc p')!.text!.trim();
        return MapEntry(name, documentation);
      },
    ),
  );

  // Parse the key definitions.
  final razerKeys = htmlDocument.body!
      .querySelectorAll('table.memberdecls td.memItemRight')
      .cast<TableCellElement>()
      .where((cell) {
        final firstChild = cell.firstChild!;
        final nextNode = firstChild.nextNode;
        return firstChild.text == 'RZKEY' &&
            nextNode is Text &&
            nextNode.text?.trim() == '{';
      })
      .first
      .children
      .whereType<AnchorElement>()
      .skip(1) // Skip the opening 'RZKEY {' element.
      .map((anchor) {
        final name = anchor.text!;
        var valueText = anchor.nextNode!.text!;
        valueText = valueText.trim();
        valueText = valueText.substring(
          valueText.indexOf('x') + 1,
          valueText.endsWith(',') ? valueText.length - 1 : null,
        );
        final value = int.parse(valueText, radix: 16);
        final row = value >> 8;
        final column = value & 0xFF;

        return RazerKey(name, row, column, razerKeyDocumentation[name]!);
      })
      .where(
        // Skip the invalid definition.
        (key) => key.name != 'RZKEY_INVALID',
      )
      .toList(growable: false);

  // Transform the key definitions in a two-dimensional array.
  final keyLayout = <List<Set<RazerKey>>>[];
  for (final key in razerKeys) {
    if (keyLayout.length <= key.row) {
      keyLayout.addAll(
        Iterable.generate(key.row - (keyLayout.length - 1), (_) => []),
      );
    }
    final row = keyLayout[key.row];
    if (row.length <= key.column) {
      row.addAll(Iterable.generate(key.column - (row.length - 1), (_) => {}));
    }
    row[key.column].add(key);
  }

  // Generate the enum.
  const razerKeyEnumName = 'RazerKey';
  final razerKeyEnum = Enum(
    (b) => b
      ..name = razerKeyEnumName
      ..fields.add(
        Field(
          (b) => b
            ..modifier = FieldModifier.final$
            ..type = const Reference('int', 'dart:core')
            ..name = 'row',
        ),
      )
      ..fields.add(
        Field(
          (b) => b
            ..modifier = FieldModifier.final$
            ..type = const Reference('int', 'dart:core')
            ..name = 'column',
        ),
      )
      ..constructors.add(
        Constructor(
          (b) => b
            ..constant = true
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = 'row',
              ),
            )
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..toThis = true
                  ..name = 'column',
              ),
            ),
        ),
      )
      ..values.addAll(
        razerKeys.map(
          (key) => EnumValue(
            (b) => b
              ..docs.add('/// ${key.documentation}')
              ..name = key.dartName
              ..arguments.add(literalNum(key.row))
              ..arguments.add(literalNum(key.column)),
          ),
        ),
      )
      ..fields.add(
        Field(
          (b) => b
            ..static = true
            ..modifier = FieldModifier.constant
            ..name = 'rowCount'
            ..assignment = literalNum(keyLayout.length).code,
        ),
      )
      ..fields.add(
        Field(
          (b) => b
            ..static = true
            ..modifier = FieldModifier.constant
            ..name = 'columnCount'
            ..assignment =
                literalNum(keyLayout.map((row) => row.length).reduce(max)).code,
        ),
      )
      ..fields.add(
        Field(
          (b) => b
            ..static = true
            ..modifier = FieldModifier.constant
            ..name = 'layout'
            ..assignment = literalList(
              keyLayout.map(
                (row) => literalList(
                  row.map(
                    (key) => literalSet(
                      key.map(
                        (key) => const Reference(razerKeyEnumName)
                            .property(key.dartName),
                      ),
                    ),
                  ),
                ),
              ),
              TypeReference(
                (b) => b
                  ..symbol = 'List'
                  ..url = 'dart:core'
                  ..types.add(
                    TypeReference(
                      (b) => b
                        ..symbol = 'Set'
                        ..url = 'dart:core'
                        ..types.add(const Reference(razerKeyEnumName)),
                    ),
                  ),
              ),
            ).code,
        ),
      ),
  );

  // Generate the library.
  final library = Library((b) => b..body.add(razerKeyEnum));

  // Render the library source code.
  final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true);
  final formatter = DartFormatter();
  final libraryString = formatter.format(library.accept(emitter).toString());

  // Generate the library header.
  final generationDate = DateTime.now().toUtc();
  final toolPathSegments = Platform.script.pathSegments;
  final toolLocation =
      joinAll(toolPathSegments.sublist(toolPathSegments.length - 2));
  final libraryHeader = '// ignore_for_file: type=lint\n\n'
      '// Generated file; DO NOT EDIT!\n'
      '// Generated by $toolLocation on $generationDate.';

  stdout.writeln(libraryHeader);
  stdout.writeln();
  stdout.write(libraryString);
}

class RazerKey {
  final String name;
  final int row;
  final int column;
  final String documentation;

  const RazerKey(this.name, this.row, this.column, this.documentation);

  String get dartName {
    final normalizedName = name.substring('RZKEY_'.length).camelCase;
    return const {
          '1': 'one',
          '2': 'two',
          '3': 'three',
          '4': 'four',
          '5': 'five',
          '6': 'six',
          '7': 'seven',
          '8': 'eight',
          '9': 'nine',
          '0': 'zero',
        }[normalizedName] ??
        normalizedName;
  }

  @override
  String toString() => 'RazerKey($name: ($row,$column))';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RazerKey &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          row == other.row &&
          column == other.column;

  @override
  int get hashCode => Object.hash(name, row, column);
}
