import 'dart:ffi' as ffi;

import '/src/api/device.dart';
import '/src/api/keyboard.dart';
import '/src/driver.dart';

class Client = BaseClient with DeviceApi, KeyboardApi;

class BaseClient {
  /// The Dart binding to the native librazermacos library.
  ///
  /// This should not need to be used outside this package; consider making an
  /// issue about missing features.
  final Driver driver;

  /// Constructs using [driverLibraryPath], the path to a driver library.
  BaseClient(String driverLibraryPath)
      : this.fromLibrary(ffi.DynamicLibrary.open(driverLibraryPath));

  /// Constructs using [driverLibrary], an instance of a driver library.
  BaseClient.fromLibrary(ffi.DynamicLibrary driverLibrary)
      : driver = Driver(driverLibrary);
}
