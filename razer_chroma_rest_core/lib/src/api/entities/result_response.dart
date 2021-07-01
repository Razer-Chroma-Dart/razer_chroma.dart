/// An API response that includes a result code.
abstract class ResultResponse {
  /// The result of the creation; typically 0 if successful.
  int get result;
}

mixin ResultResponseInfo {
  int get result;

  /// True if the requested operation was successful.
  bool get successful => result == 0;
}
