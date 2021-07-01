import 'package:shelf_plus/shelf_plus.dart';

import '/src/errors/exceptions/json_type.dart';

/// Accessor getters on [RequestBodyAccessor] to safely access JSON data.
extension CheckedJsonAccessor on RequestBodyAccessor {
  /// Like [asJson], but throws a [JsonTypeException] if the JSON isn't a
  /// `Map<String, dynamic>`.
  Future<Map<String, dynamic>> get asJsonChecked async {
    final json = await asJson;
    if (json is! Map<String, dynamic>) {
      throw JsonTypeException<Map<String, dynamic>>(json);
    }
    return json;
  }
}
