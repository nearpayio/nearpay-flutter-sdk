import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/logout_error/logout_error.dart';
import 'package:nearpay_flutter_sdk/errors/user_session_error/user_session_error.dart';

LogoutError getLogoutError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.failureCode:
      return LogoutFailureMessage.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return LogoutAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return LogoutInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return LogoutGeneralFailure.fromJson(nativeResponse);
    case ErrorCodes.alreadyLogoutCode:
      return AlreadyLogoutFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}

