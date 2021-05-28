import '/src/client.dart';
import '/src/driver.dart';

/// A [BaseClient] mixin adding device management functionallity.
mixin DeviceApi on BaseClient {
  /// The open Razer Chroma devices.
  RazerDevices get openDevices =>
      _devices ??
      (throw StateError('No devices open! Use a method like getAllDevices().'));
  RazerDevices? _devices;

  /// True if any Razer Chroma devices are open.
  ///
  /// Devices can be opened and closed with functions like [openAllDevices] and
  /// [closeAllDevices].
  bool get hasOpenDevices => _devices != null;

  /// Opens all connected Razer Chroma devices.
  void openAllDevices() {
    assert(!hasOpenDevices, 'Devices are already open!');
    _devices = driver.getAllRazerDevices();
  }

  /// Closes all open Razer Chroma devices.
  void closeAllDevices() {
    assert(hasOpenDevices, 'No devices are open!');
    driver.closeAllRazerDevices(_devices!);
  }
}
