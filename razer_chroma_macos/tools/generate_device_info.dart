import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart';
import 'package:recase/recase.dart';

/// A tool to generate device info by parsing JSON from the razer-macos project.
Future<void> main(List<String> arguments) async {
  // Locate the razer-macos device info JSON files.
  if (arguments.isEmpty) {
    stderr.writeln('Please provide a path to razer-macos!');
    exit(2);
  }
  final deviceInfoJsonDirectory =
      Directory(join(arguments[0], 'src', 'devices'));
  if (!await deviceInfoJsonDirectory.exists()) {
    stderr
        .writeln('Cannot find device info JSON at "$deviceInfoJsonDirectory"!');
    exit(1);
  }
  final deviceInfoJsonFiles = await deviceInfoJsonDirectory
      .list()
      .where((entity) => entity is File)
      .cast<File>()
      .toList();
  deviceInfoJsonFiles.sort((a, b) => basenameWithoutExtension(a.path)
      .compareTo(basenameWithoutExtension(b.path)));

  // Set up type references.
  final deviceInfoReference =
      TypeReference((b) => b.symbol = 'RazerDeviceInfo');
  final deviceInfoTypeReference =
      TypeReference((b) => b.symbol = 'RazerDeviceType');
  final optionalDeviceFeatureReference =
      TypeReference((b) => b.symbol = 'OptionalRazerDeviceFeature');
  final deviceFeatureConfigReference =
      TypeReference((b) => b.symbol = 'RazerDeviceFeatureConfig');
  Reference buildDeviceFeatureConfigReference(String subclass) =>
      Reference('${subclass}FeatureConfig');

  // Build the DeviceInfo class.
  final deviceInfoFields = [
    Field((b) => b
      ..modifier = FieldModifier.final$
      ..name = 'name'
      ..type = const Reference('String')),
    Field((b) => b
      ..modifier = FieldModifier.final$
      ..name = 'productId'
      ..type = const Reference('int')),
    Field((b) => b
      ..modifier = FieldModifier.final$
      ..name = 'mainType'
      ..type = deviceInfoTypeReference),
    Field((b) => b
      ..modifier = FieldModifier.final$
      ..name = 'image'
      ..type = const Reference('String')),
    Field((b) => b
      ..modifier = FieldModifier.final$
      ..name = 'missingFeatures'
      ..type = TypeReference((b) => b
        ..symbol = 'Set'
        ..types = ListBuilder([optionalDeviceFeatureReference]))),
    Field((b) => b
      ..modifier = FieldModifier.final$
      ..name = 'featureConfigs'
      ..type = TypeReference((b) => b
        ..symbol = 'Map'
        ..types = ListBuilder(
            [const Reference('Type'), deviceFeatureConfigReference]))),
  ];
  final deviceInfoClass = Class(
    (b) => b
      ..docs =
          ListBuilder(const ['/// Information about a Razer Chroma device.'])
      ..name = deviceInfoReference.symbol
      ..fields = ListBuilder(deviceInfoFields)
      ..constructors = ListBuilder([
        Constructor((b) => b
          ..constant = true
          ..optionalParameters.addAll(
            deviceInfoFields.map(
              (field) => Parameter((b) => b
                ..named = true
                ..required = true
                ..toThis = true
                ..name = field.name),
            ),
          )),
      ]),
  );

  // Build the device feature configuration class.
  final deviceFeatureConfigClass = Class((b) => b
    ..docs = ListBuilder(
        const ['/// Device-specific configuration values for a feature.'])
    ..name = deviceFeatureConfigReference.symbol
    ..constructors = ListBuilder(
      [Constructor((b) => b..constant = true)],
    ));

  // Create a set of device type enum values.
  final deviceInfoTypes = HashSet<EnumValue>(
    equals: (enumValue1, enumValue2) => enumValue1.name == enumValue2.name,
    hashCode: (enumValue) => enumValue.name.hashCode,
  );

  // Create a set of optional features.
  final deviceOptionalFeatures = HashSet<EnumValue>(
    equals: (enumValue1, enumValue2) => enumValue1.name == enumValue2.name,
    hashCode: (enumValue) => enumValue.name.hashCode,
  );

  // Create a map of feature configuration class builders.
  final deviceFeatureConfigurationClassBuilders = <String, ClassBuilder>{};

  // Create a list of constant DeviceInfo instantiations expressions.
  final deviceInfoInstantiations = <InvokeExpression>[];

  // Parse the device info JSON.
  for (final file in deviceInfoJsonFiles) {
    // Decode the device info JSON.
    final deviceInfoJson = jsonDecode(await file.readAsString());

    // Add the device type to the device type set.
    deviceInfoTypes.add(EnumValue((b) => b.name = deviceInfoJson['mainType']));

    // Store new optional features.
    if (deviceInfoJson['featuresMissing'] != null) {
      deviceOptionalFeatures.addAll(
          (deviceInfoJson['featuresMissing'] as List<dynamic>)
              .map((feature) => EnumValue((b) => b.name = feature)));
    }

    // Build new feature configuration classes.
    final Map<String, dynamic> featureConfigsJson;
    if (deviceInfoJson['featuresConfig'] != null) {
      // Flatten the feature configuration list.
      featureConfigsJson = {
        for (final featuresConfigSection
            in (deviceInfoJson['featuresConfig'] as List<dynamic>)
                .cast<Map<String, dynamic>>())
          ...featuresConfigSection
      };

      // Add new properties to configuration classes, creating the classes if
      // they don't yet exist.
      for (final featureConfigJson in featureConfigsJson.entries) {
        final bool newClass = !deviceFeatureConfigurationClassBuilders
            .containsKey(featureConfigJson.key);
        if (newClass) {
          // Create the class if it doesn't yet exist.
          deviceFeatureConfigurationClassBuilders[featureConfigJson.key] =
              ClassBuilder()
                ..name = buildDeviceFeatureConfigReference(
                        featureConfigJson.key.pascalCase)
                    .symbol
                ..extend = deviceFeatureConfigReference;
        } else {
          // If the class exists, and any known properties are missing, make
          // them nullable.
          final fields =
              deviceFeatureConfigurationClassBuilders[featureConfigJson.key]!
                  .fields;
          for (var i = 0; i < fields.length; ++i) {
            if (!(featureConfigJson.value as Map<String, dynamic>)
                    .containsKey(fields[i].name) &&
                (fields[i].type as TypeReference).isNullable != true) {
              fields[i] = fields[i].rebuild((b) => b.type =
                  (b.type as TypeReference)
                      .rebuild((b) => b.isNullable = true));
            }
          }
        }

        final fields =
            deviceFeatureConfigurationClassBuilders[featureConfigJson.key]!
                .fields;
        for (final featureConfigEntry
            in (featureConfigJson.value as Map<String, dynamic>).entries) {
          bool hasProperty = false;
          for (var i = 0; i < fields.length; ++i) {
            if (fields[i].name == featureConfigEntry.key) {
              hasProperty = true;
              break;
            }
          }
          if (!hasProperty) {
            fields.add(Field((b) {
              // Add a final field with the property name as defined in the
              // JSON.
              b
                ..modifier = FieldModifier.final$
                ..name = featureConfigEntry.key;

              // Use the correct property type.
              // If this feature configuration class already existed, and this
              // property wasn't in it, the property must be nullable.
              if (featureConfigEntry.value is int) {
                b.type = TypeReference((b) => b
                  ..symbol = 'int'
                  ..isNullable = !newClass);
              } else if (featureConfigEntry.value is double) {
                b.type = TypeReference((b) => b
                  ..symbol = 'double'
                  ..isNullable = !newClass);
              } else if (featureConfigEntry.value is bool) {
                b.type = TypeReference((b) => b
                  ..symbol = 'bool'
                  ..isNullable = !newClass);
              } else if (featureConfigEntry.value is String) {
                b.type = TypeReference((b) => b
                  ..symbol = 'String'
                  ..isNullable = !newClass);
              } else {
                throw FormatException(
                  'Deeply nested feature configuration properties are not supported! (Requires types of "int", "double", "bool", or "String"; got "${featureConfigEntry.value.runtimeType}" assigned to key "${featureConfigEntry.key}".',
                  featureConfigEntry,
                );
              }
            }));
          }
        }
      }
    } else {
      featureConfigsJson = const {};
    }

    // Add constructors to the feature configuration class builders.
    for (final builder in deviceFeatureConfigurationClassBuilders.values) {
      builder.constructors = ListBuilder([
        Constructor((b) => b
          ..constant = true
          ..optionalParameters.addAll(
            builder.fields.build().map(
                  (field) => Parameter((b) => b
                    ..named = true
                    ..required =
                        (field.type as TypeReference).isNullable != true
                    ..toThis = true
                    ..name = field.name),
                ),
          )),
      ]);
    }

    // Add a DeviceInfo instantiation with data from the device info JSON.
    deviceInfoInstantiations.add(
      deviceInfoReference.constInstance(
        const [],
        {
          'name': literalString(deviceInfoJson['name']),
          'productId': CodeExpression(Code(
              '0x${int.parse(deviceInfoJson['productId']).toRadixString(16).padLeft(2, '0')}')),
          'mainType':
              deviceInfoTypeReference.property(deviceInfoJson['mainType']),
          'image': literalString(deviceInfoJson['image']),
          'missingFeatures': literalSet(
              (deviceInfoJson['featuresMissing'] as List<dynamic>? ?? const [])
                  .cast<String>()
                  .map((feature) =>
                      optionalDeviceFeatureReference.property(feature))),
          'featureConfigs':
              literalMap(featureConfigsJson.map((feature, properties) {
            // Obtain the feature configuration class reference from the feature name.
            final classReference =
                buildDeviceFeatureConfigReference(feature.pascalCase);
            // Map the feature configuration class type to a constant
            // instantiation with the properties from the JSON.
            return MapEntry(
              classReference,
              classReference.constInstance(
                const [],
                (properties as Map<String, dynamic>)
                    .map((key, value) => MapEntry(key, literal(value))),
              ),
            );
          })),
        },
      ) as InvokeExpression,
    );
  }

  // Build the device info type enum.
  final deviceInfoTypeEnum = Enum((b) => b
    ..docs = ListBuilder([
      '/// The type of device described by a [${deviceInfoReference.symbol}] instance.'
    ])
    ..name = deviceInfoTypeReference.symbol
    ..values = ListBuilder(deviceInfoTypes));

  // Build the optional feature enum.
  final optionalDeviceFeatureEnum = Enum((b) => b
    ..docs = ListBuilder(
        const ['/// Features that are unsupported by some devices.'])
    ..name = optionalDeviceFeatureReference.symbol
    ..values = ListBuilder(deviceOptionalFeatures));

  // Build the device feature configuration classes.
  final deviceFeatureConfigurationClasses =
      deviceFeatureConfigurationClassBuilders.values
          .map((builder) => builder.build());

  // Build a map of product IDs to device info instantiation expressions.
  final deviceInfoDataMap = literalConstMap({
    for (final deviceInfoInstantiation in deviceInfoInstantiations)
      deviceInfoInstantiation.namedArguments['productId']:
          deviceInfoInstantiation,
  });

  // Regenerate the device info class with product data.
  final deviceInfoClassWithProductData = deviceInfoClass.rebuild((b) => b
    ..fields.add(
      Field((b) => b
        ..docs = ListBuilder([
          '/// A map of USB product IDs to Razer Chroma device information.'
        ])
        ..static = true
        ..modifier = FieldModifier.constant
        ..name = 'products'
        ..assignment = deviceInfoDataMap.code),
    ));

  // Build a library.
  final library = Library((b) => b
    ..body = ListBuilder([
      deviceInfoTypeEnum,
      optionalDeviceFeatureEnum,
      deviceFeatureConfigClass,
      ...deviceFeatureConfigurationClasses,
      deviceInfoClassWithProductData,
    ]));

  // Generate and format the library source code.
  final emitter = DartEmitter(orderDirectives: true, useNullSafetySyntax: true);
  final formatter = DartFormatter();
  final libraryString = formatter.format(library.accept(emitter).toString());

  // Generate the library header.
  final generationDate = DateTime.now().toUtc();
  final toolPathSegments = Platform.script.pathSegments;
  final toolLocation =
      joinAll(toolPathSegments.sublist(toolPathSegments.length - 2));
  final revisionCheckProcessResult = await Process.run(
      'git', const ['rev-parse', 'HEAD'],
      workingDirectory: deviceInfoJsonDirectory.path);
  final revision =
      (revisionCheckProcessResult.stdout as String).replaceAll('\n', '');
  final libraryHeader = '// Generated file; DO NOT EDIT!\n'
      '// Generated by $toolLocation on $generationDate (using razer-macos $revision).';

  stdout.writeln(libraryHeader);
  stdout.writeln();
  stdout.write(libraryString);
}
