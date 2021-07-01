import 'package:freezed_annotation/freezed_annotation.dart';

/// A type of Razer Chroma device.
///
/// These device types are defined by the REST API documentation, and may differ
/// from types listed in [RazerDeviceType] from `package:razer_chroma`.
enum DeviceType {
  @JsonValue('keyboard')
  keyboard,

  @JsonValue('mouse')
  mouse,

  @JsonValue('headset')
  headset,

  @JsonValue('mousepad')
  mousepad,

  @JsonValue('keypad')
  keypad,

  @JsonValue('chromalink')
  chromalink,
}
