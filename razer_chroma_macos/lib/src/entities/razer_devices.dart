import 'dart:ffi' as ffi;

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:razer_chroma/razer_chroma.dart';
import 'package:razer_chroma_macos/src/driver.dart' as driver;
import 'package:razer_chroma_macos/src/entities/razer_device.dart';

class RazerMacOSDevices extends DelegatingList<RazerMacOSDevice>
    implements RazerDevices<RazerMacOSDevice> {
  @internal
  final driver.RazerDevices nativeRazerDevices;

  RazerMacOSDevices(this.nativeRazerDevices)
      : super(
          UnmodifiableListView(
            List.generate(
              nativeRazerDevices.size,
              (index) => RazerMacOSDevice(
                nativeRazerDevices.devices.elementAt(index).ref,
              ),
              growable: false,
            ),
          ),
        );
}
