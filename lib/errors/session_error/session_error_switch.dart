import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/session_error/session_error.dart';

SessionError getSessionError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.authFailedCode:
      return SessionAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.failureCode:
      return SessionFailureMessage.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return SessionGeneralFailure.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return SessionInvalidStatus.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
