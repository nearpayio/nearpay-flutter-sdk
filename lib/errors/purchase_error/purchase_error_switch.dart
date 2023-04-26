import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';

PurchaseError getPurchaseError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case 405:
      return PurchaseDeclined.fromJson(nativeResponse);
    case 406:
      return PurchaseRejected.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
