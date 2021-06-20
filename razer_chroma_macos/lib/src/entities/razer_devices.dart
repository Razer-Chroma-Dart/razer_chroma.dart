import 'dart:ffi' as ffi;

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import '/src/driver.dart' as driver;
import '/src/entities/razer_device.dart';

/// A [List] of [RazerDevice]s.
class RazerDevices extends DelegatingList<RazerDevice>
    implements List<RazerDevice> {
  @internal
  final driver.RazerDevices nativeRazerDevices;

  RazerDevices(this.nativeRazerDevices)
      : super(
          UnmodifiableListView(
            List.generate(
              nativeRazerDevices.size,
              (index) =>
                  RazerDevice(nativeRazerDevices.devices.elementAt(index).ref),
              growable: false,
            ),
          ),
        );
}
