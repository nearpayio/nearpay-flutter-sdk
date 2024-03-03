import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/query_error/query_error.dart';
import 'package:nearpay_flutter_sdk/errors/user_session_error/user_session_error.dart';

QueryError getQueryError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.failureCode:
      return QueryFailureMessage.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return QueryAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return QueryInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return QueryGeneralFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
