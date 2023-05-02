import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/errors/refund_error/refund_error.dart';

RefundError getRefundError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case 407:
      return RefundDeclined.fromJson(nativeResponse);
    case 408:
      return RefundRejected.fromJson(nativeResponse);
    case 401:
      return RefundAuthenticationFailed.fromJson(nativeResponse);
    case 404:
      return RefundInvalidStatus.fromJson(nativeResponse);
    case 402:
      return RefundInvalidStatus.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
