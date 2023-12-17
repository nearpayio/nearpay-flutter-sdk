import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';
import 'package:nearpay_flutter_sdk/errors/user_session_error/user_session_error.dart';

UserSessionError getUserSessionError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.failureCode:
      return UserSessionFailureMessage.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return UserSessionAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return UserSessionInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return UserSessionGeneralFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
