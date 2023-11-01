import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';

ReconcileError getReconcileError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.failureCode:
      return ReconcileFailureMessage.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return ReconcileAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return ReconcileInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return ReconcileGeneralFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
