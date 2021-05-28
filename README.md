# razer_chroma_macos
Dart bindings to the Razer Chroma macOS library ([librazermacos]), with a
Dart-friendly wrapper.

## Getting started
### Compilation
[librazermacos] must be available as a shared library. The version in the
[driver] submodule is guaranteed to be compatible with the package.

### Usage
```dart
// Import the package
import 'package:razer_chroma_mac/razer_chroma_macos.dart' as razer_chroma_mac;

// Set up a client.
final razerChromaMac = razer_chroma_mac.Client('/path/to/librazermacos.so');

// Open all devices, and select the first one.
razerChromaMac.openAllDevices();
final device = razerChromaMac.openDevices[0];

// Apply a keyboard wave effect (assuming [device] is a keyboard).
razerChromaMac.kbdSetModeWave(device);

// Close open devices.
razerChromaMac.closeAllDevices();
```

## Development
### The driver
Bindings to [librazermacos] are in [driver.dart], which is generated with
[ffigen]. [ffigen] must be used whenever the submodule is updated:

```shell
dart run ffigen
```

### The wrapper
The driver's Dart-friendly wrapper is implemented with mixins on `BaseClient`.
See `Client` and `KeyboardApi` for an example.  

It is designed to mimic [razer-macos]'s driver API, hiding C nastiness like
memory allocation and pointers from package users.

The order and names of methods should be kept in sync with [razer-macos].

[librazermacos]: https://github.com/1kc/librazermacos
[razer-macos]: https://github.com/1kc/razer-macos
[driver]: /driver
[driver.dart]: /lib/src/driver.dart
[ffigen]: https://pub.dev/packages/ffigen