import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RazerChromaApiException implements Exception {
  int get code;

  final String message;

  const RazerChromaApiException(this.message);

  factory RazerChromaApiException.fromCode(int code, String message) {
    switch (code) {
      case -1:
        return RazerChromaApiInvalidException(message);
      case 5:
        return RazerChromaApiAccessDeniedException(message);
      case 6:
        return RazerChromaApiInvalidHandleException(message);
      case 50:
        return RazerChromaApiNotSupportedException(message);
      case 87:
        return RazerChromaApiInvalidParameterException(message);
      case 1062:
        return RazerChromaApiServiceNotActiveException(message);
      case 1152:
        return RazerChromaApiSingleInstanceAppException(message);
      case 1167:
        return RazerChromaApiDeviceNotConnectedException(message);
      case 1168:
        return RazerChromaApiResultNotFoundException(message);
      case 1235:
        return RazerChromaApiRequestAbortedException(message);
      case 1247:
        return RazerChromaApiAlreadyInitializedException(message);
      case 4309:
        return RazerChromaApiResourceDisabledException(message);
      case 4319:
        return RazerChromaApiDeviceNotAvailableException(message);
      case 5023:
        return RazerChromaApiDeviceNotValidStateException(message);
      case 259:
        return RazerChromaApiNoMoreItemsException(message);
      case 214750003:
        return RazerChromaApiFailedException(message);
      default:
        return RazerChromaApiUnknownException(code, message);
    }
  }

  factory RazerChromaApiException.fromJson(Map<String, dynamic> json) {
    const className = 'RazerChromaApiException';
    return RazerChromaApiException.fromCode(
      json['result'] as int? ??
          (throw CheckedFromJsonException(
            json,
            'result',
            className,
            'Missing result key',
            badKey: true,
          )),
      json['error'] as String? ??
          (throw CheckedFromJsonException(
            json,
            'error',
            className,
            'Missing error key',
            badKey: true,
          )),
    );
  }

  Map<String, dynamic> toJson() => {'result': code, 'error': message};

  @override
  String toString() => 'RazerChromaApiException{message: $message}';
}

/// Unknown API exception.
///
/// This exception is thrown when an API error with an unrecognised code is
/// encountered.
class RazerChromaApiUnknownException extends RazerChromaApiException {
  @override
  final int code;

  const RazerChromaApiUnknownException(this.code, String message)
      : super(message);

  @override
  String toString() => 'RazerChromaApiUnknownException{code: $code}';
}

/// Invalid.
class RazerChromaApiInvalidException extends RazerChromaApiException {
  @override
  int get code => -1;

  const RazerChromaApiInvalidException(String message) : super(message);

  @override
  String toString() => 'RazerChromaApiInvalidException{message: $message}';
}

/// Access denied.
class RazerChromaApiAccessDeniedException extends RazerChromaApiException {
  @override
  int get code => 5;

  const RazerChromaApiAccessDeniedException(String message) : super(message);

  @override
  String toString() => 'RazerChromaApiAccessDeniedException{message: $message}';
}

/// Invalid handle.
class RazerChromaApiInvalidHandleException extends RazerChromaApiException {
  @override
  int get code => 6;

  const RazerChromaApiInvalidHandleException(String message) : super(message);

  @override
  String toString() =>
      'RazerChromaApiInvalidHandleException{message: $message}';
}

/// Not supported.
class RazerChromaApiNotSupportedException extends RazerChromaApiException {
  @override
  int get code => 50;

  const RazerChromaApiNotSupportedException(String message) : super(message);

  @override
  String toString() => 'RazerChromaApiNotSupportedException{message: $message}';
}

/// Invalid parameter.
class RazerChromaApiInvalidParameterException extends RazerChromaApiException {
  @override
  int get code => 87;

  const RazerChromaApiInvalidParameterException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiInvalidParameterException{message: $message}';
}

/// The service has not been started.
class RazerChromaApiServiceNotActiveException extends RazerChromaApiException {
  @override
  int get code => 1062;

  const RazerChromaApiServiceNotActiveException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiServiceNotActiveException{message: $message}';
}

/// Cannot start more than one instance of the specified program.
class RazerChromaApiSingleInstanceAppException extends RazerChromaApiException {
  @override
  int get code => 1152;

  const RazerChromaApiSingleInstanceAppException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiSingleInstanceAppException{message: $message}';
}

/// Device not connected.
class RazerChromaApiDeviceNotConnectedException
    extends RazerChromaApiException {
  @override
  int get code => 1167;

  const RazerChromaApiDeviceNotConnectedException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiDeviceNotConnectedException{message: $message}';
}

/// Element not found.
class RazerChromaApiResultNotFoundException extends RazerChromaApiException {
  @override
  int get code => 1168;

  const RazerChromaApiResultNotFoundException(String message) : super(message);

  @override
  String toString() =>
      'RazerChromaApiResultNotFoundException{message: $message}';
}

/// Request aborted.
class RazerChromaApiRequestAbortedException extends RazerChromaApiException {
  @override
  int get code => 1235;

  const RazerChromaApiRequestAbortedException(String message) : super(message);

  @override
  String toString() =>
      'RazerChromaApiRequestAbortedException{message: $message}';
}

/// An attempt was made to perform an initialization operation when
/// initialization has already been completed.
class RazerChromaApiAlreadyInitializedException
    extends RazerChromaApiException {
  @override
  int get code => 1247;

  const RazerChromaApiAlreadyInitializedException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiAlreadyInitializedException{message: $message}';
}

/// Resource not available or disabled.
class RazerChromaApiResourceDisabledException extends RazerChromaApiException {
  @override
  int get code => 4309;

  const RazerChromaApiResourceDisabledException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiResourceDisabledException{message: $message}';
}

/// Device not available or supported.
class RazerChromaApiDeviceNotAvailableException
    extends RazerChromaApiException {
  @override
  int get code => 4319;

  const RazerChromaApiDeviceNotAvailableException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiDeviceNotAvailableException{message: $message}';
}

/// The group or resource is not in the correct state to perform the requested
/// operation.
class RazerChromaApiDeviceNotValidStateException
    extends RazerChromaApiException {
  @override
  int get code => 5023;

  const RazerChromaApiDeviceNotValidStateException(String message)
      : super(message);

  @override
  String toString() =>
      'RazerChromaApiDeviceNotValidStateException{message: $message}';
}

/// No more items.
class RazerChromaApiNoMoreItemsException extends RazerChromaApiException {
  @override
  int get code => 259;

  const RazerChromaApiNoMoreItemsException(String message) : super(message);

  @override
  String toString() => 'RazerChromaApiNoMoreItemsException{message: $message}';
}

/// General failure.
class RazerChromaApiFailedException extends RazerChromaApiException {
  @override
  int get code => 214750003;

  const RazerChromaApiFailedException(String message) : super(message);

  @override
  String toString() => 'RazerChromaApiFailedException{message: $message}';
}
