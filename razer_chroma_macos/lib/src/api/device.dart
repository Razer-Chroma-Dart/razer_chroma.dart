import '/src/client.dart';
import '/src/entities/razer_devices.dart';

/// A [BaseClient] mixin adding device management functionality.
mixin DeviceApi on BaseClient {
  /// The open Razer Chroma devices.
  RazerMacOSDevices get openDevices =>
      _devices ??
      (throw StateError('No devices open! Use a method like getAllDevices().'));
  RazerMacOSDevices? _devices;

  /// True if any Razer Chroma devices are open.
  ///
  /// Devices can be opened and closed with functions like [openAllDevices] and
  /// [closeAllDevices].
  bool get hasOpenDevices => _devices != null;

  /// Opens all connected Razer Chroma devices.
  void openAllDevices() {
    assert(!hasOpenDevices, 'Devices are already open!');
    _devices = RazerMacOSDevices(binding.getAllRazerDevices());
  }

  /// Closes all open Razer Chroma devices.
  void closeAllDevices() {
    assert(hasOpenDevices, 'No devices are open!');
    binding.closeAllRazerDevices(openDevices.nativeRazerDevices);
    _devices = null;
  }
}
