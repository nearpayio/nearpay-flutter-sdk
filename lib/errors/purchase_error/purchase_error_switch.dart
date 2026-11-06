import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';

PurchaseError getPurchaseError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.purchaseDeclinedCode:
      return PurchaseDeclined.fromJson(nativeResponse);
    case ErrorCodes.purchaseRejectedCode:
      return PurchaseRejected.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return PurchaseAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return PurchaseInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return PurchaseGeneralFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
