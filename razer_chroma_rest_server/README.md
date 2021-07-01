# Razer Chroma REST Server
An implementation of the [Razer Chroma SDK REST API][rest_api_docs] in Dart.

This implementation is platform-agnostic; it will run on any platform with
`dart:io`. Device communication must be implemented.

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
  final backend = MyRazerChromaRestServerBackend();
  final server = rcr.RazerChromaRestServer(backend);
  await server.start();
  // ...
}

class MyRazerChromaRestServerBackend extends rcr.RazerChromaRestServerBackend {
  @override
  void sessionStarted(rcr.ClientDetails details) {
    print('Session started: $details');
  }

  @override
  void sessionStopped(rcr.ClientDetails details) {
    print('Session stopped: $details');
  }

  @override
  bool keyboardEmptyEffect() {
    print('Applying effect: keyboard empty');
    /* Apply effect to keyboard */
    return true;
  }

  @override
  bool keyboardStaticEffect(Color color) {
    print('Applying effect: keyboard static');
    /* Apply effect to keyboard */
    return true;
  }
  
  // ...
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

## Motivation
Razer has implemented their [Razer Chroma SDK REST API][rest_api_docs] on
Windows, but there's no official implementation for macOS or Linux. This project
provides a platform-agnostic implementation that can be connected to platform
specific code on each operating system, the first step to create macOS and Linux
implementations.

[rest_api_docs]: https://assets.razerzone.com/dev_portal/REST/html/index.html