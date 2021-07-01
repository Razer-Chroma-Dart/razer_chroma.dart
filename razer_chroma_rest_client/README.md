# Razer Chroma REST Client
A Dart [Razer Chroma SDK REST API][rest_api_docs] client.  
This client is compatible with the official Windows backend, as well as the
[Dart implementation](../razer_chroma_rest_server).

## Work-in-progress
This package is usable, but is a work-in-progress and lacks many features.
See the API list below for details.  
The package is easily extendable - contributions are welcome!
Take a look at a device API mixin like `KeyboardApi` for an idea of how to
implement APIs.

## Usage
See [example](example) for a complete example.
### Quick Start
```dart
import 'package:razer_chroma/razer_chroma.dart';
import 'package:razer_chroma_rest_server/razer_chroma_rest_server.dart' as rcr;

Future<void> main() async {
  // Create the client.
  final client = rcr.RazerChromaClient();

  // Get the version information.
  final version = await client.getVersion();

  // Start a session.
  await client.connect(const rcr.ClientDetails(
    title: 'Dart Razer Chroma SDK example',
    description: 'Dart Razer Chroma SDK example description',
    author: rcr.Author(
      name: 'hacker1024',
      contact: 'https://github.com/hacker1024',
    ),
    supportedDevices: {rcr.DeviceType.keyboard},
    category: rcr.ClientCategory.application,
  ));

  // Catch heartbeat errors.
  client.onHeartbeatError = (error) {
    print('Heartbeat error: $error');
    return true;
  };

  // A small delay may need to be awaited before effects work - they will appear
  // successful, but not actually apply if set too soon.
  //
  // This applies to the official backend only.
  await Future<void>.delayed(const Duration(milliseconds: 600));

  // Display a solid green color.
  await client.setKeyboardEffect(const rcr.StaticKeyboardEffect(
      rcr.StaticKeyboardEffectParameters(0x00FF00)));
}
```

## Implemented APIs
_Deprecated APIs are in ~~strikethrough~~._

- Version
    - [x] Version information
- Session
    - [x] Initialization
    - [x] Heartbeat
    - [x] Uninitialization
- Effects
    - Identifier-based effect application
        - [x] Single-effect application
        - [ ] Multi-effect application
    - Identifier-based effect deletion
        - [ ] Single-effect deletion
        - [ ] Multi-effect deletion
    - [ ] Device specific
- Keyboard
    - [x] Empty
    - [x] Static
    - [x] Custom
    - [ ] Custom v2
    - [ ] Custom key
    - [x] ~~Wave~~
    - Identifier-based effect creation
        - [x] Single-effect creation
        - [ ] Multi-effect creation
- Mouse
    - [ ] Empty
    - [ ] Static
    - [ ] Custom v2
    - Identifier-based effect creation
        - [ ] Single-effect creation
        - [ ] Multi-effect creation
- Mousepad
    - [ ] Empty
    - [ ] Static
    - [ ] Custom
    - Identifier-based effect creation
        - [ ] Single-effect creation
        - [ ] Multi-effect creation
- Headset
    - [ ] Empty
    - [ ] Static
    - [ ] Custom
    - Identifier-based effect creation
        - [ ] Single-effect creation
        - [ ] Multi-effect creation
- Keypad
    - [ ] Empty
    - [ ] Static
    - [ ] Custom
- Third party (Chroma Linked)
    - [ ] Empty
    - [ ] Static
    - [ ] Custom
    - Identifier-based effect creation
        - [ ] Single-effect creation
        - [ ] Multi-effect creation

[rest_api_docs]: https://assets.razerzone.com/dev_portal/REST/html/index.html