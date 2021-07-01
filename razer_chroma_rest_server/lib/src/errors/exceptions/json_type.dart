/// An exception thrown when received JSON does not match the expected type.
class JsonTypeException<Expected> implements Exception {
  final dynamic json;

  const JsonTypeException(this.json);

  Type get expectedType => Expected;

  Type get receivedType => json.runtimeType;
}
