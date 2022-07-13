import 'dart:ffi' as ffi;

import 'package:meta/meta.dart';

import 'package:razer_chroma_macos/src/api/device.dart';
import 'package:razer_chroma_macos/src/api/keyboard.dart';
import 'package:razer_chroma_macos/src/driver.dart';

class RazerMacOSClient = BaseClient with DeviceApi, KeyboardApi;

class BaseClient {
  /// The Dart binding to the native librazermacos library.
  ///
  /// This should not need to be used outside this package; consider making an
  /// issue about missing features.
  @internal
  final RazerMacOSDriver binding;

  /// Constructs using [driverLibraryPath], the path to a driver library.
  BaseClient(String driverLibraryPath)
      : this.fromLibrary(ffi.DynamicLibrary.open(driverLibraryPath));

  /// Constructs using [driverLibrary], an instance of a driver library.
  BaseClient.fromLibrary(ffi.DynamicLibrary driverLibrary)
      : binding = RazerMacOSDriver(driverLibrary);
}
