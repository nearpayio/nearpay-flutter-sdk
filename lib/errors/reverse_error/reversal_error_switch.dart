import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';
import 'package:nearpay_flutter_sdk/errors/reverse_error/reversal_error.dart';

ReversalError getReversalError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.failureCode:
      return ReversalFailureMessage.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return ReversalAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return ReversalInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return ReversalGeneralFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
