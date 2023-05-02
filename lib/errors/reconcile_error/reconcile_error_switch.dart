import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';

ReconcileError getReconcileError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case 403:
      return ReconcileFailureMessage.fromJson(nativeResponse);
    case 401:
      return ReconcileAuthenticationFailed.fromJson(nativeResponse);
    case 404:
      return ReconcileInvalidStatus.fromJson(nativeResponse);
    case 402:
      return ReconcileInvalidStatus.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
