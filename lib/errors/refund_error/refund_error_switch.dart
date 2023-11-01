import 'package:nearpay_flutter_sdk/errors/error_codes.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/errors/refund_error/refund_error.dart';

RefundError getRefundError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case ErrorCodes.refundDeclinedCode:
      return RefundDeclined.fromJson(nativeResponse);
    case ErrorCodes.refundRejectedCode:
      return RefundRejected.fromJson(nativeResponse);
    case ErrorCodes.authFailedCode:
      return RefundAuthenticationFailed.fromJson(nativeResponse);
    case ErrorCodes.invalidCode:
      return RefundInvalidStatus.fromJson(nativeResponse);
    case ErrorCodes.generalFailureCode:
      return RefundGeneralFailure.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
