import 'package:freezed_annotation/freezed_annotation.dart';

/// The type of client requesting a session.
enum ClientCategory {
  /// A utility.
  @JsonValue('application')
  application,

  /// A game.
  @JsonValue('game')
  game,
}
