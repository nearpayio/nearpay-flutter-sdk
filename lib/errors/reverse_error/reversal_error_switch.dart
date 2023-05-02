import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';
import 'package:nearpay_flutter_sdk/errors/reverse_error/reversal_error.dart';

ReversalError getReversalError(Map<String, dynamic> nativeResponse) {
  int status = nativeResponse['status'];

  switch (status) {
    case 403:
      return ReversalFailureMessage.fromJson(nativeResponse);
    case 401:
      return ReversalAuthenticationFailed.fromJson(nativeResponse);
    case 404:
      return ReversalInvalidStatus.fromJson(nativeResponse);
    case 402:
      return ReversalInvalidStatus.fromJson(nativeResponse);
  }

  throw "no Error with status ${status}";
}
