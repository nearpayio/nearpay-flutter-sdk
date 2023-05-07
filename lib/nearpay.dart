import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/refund_error/refund_error.dart';
import 'package:nearpay_flutter_sdk/errors/refund_error/refund_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/reverse_error/reversal_error.dart';
import 'package:nearpay_flutter_sdk/errors/reverse_error/reversal_error_switch.dart';
import 'package:nearpay_flutter_sdk/listeners/listeners.dart';
import 'package:nearpay_flutter_sdk/models/reconcile_receipt/reconcile_receipt.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';
import 'package:nearpay_flutter_sdk/nearpay_provider.dart';
import 'package:nearpay_flutter_sdk/types.dart';
import 'package:uuid/uuid.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';

enum Environments {
  sandbox("sandbox"),
  production("production");

  const Environments(this.value);
  final String value;
}

enum AuthenticationType {
  login("userenter"),
  email("email"),
  mobile("mobile"),
  jwt("jwt");

  const AuthenticationType(this.value);
  final String value;
}

enum Locale {
  localeDefault("default");

  const Locale(this.value);
  final String value;
}

var uuid = Uuid();

class Nearpay {
  final AuthenticationType authType;
  final String authValue;
  final Environments env;
  final Locale locale;
  NearpayState state = NearpayState.notReady;
  late final NearpayProvider _provider = NearpayProvider(this);

  final MethodChannel methodChannel = const MethodChannel('nearpay');

  Nearpay({
    required this.authType,
    required this.authValue,
    required this.env,
    this.locale = Locale.localeDefault,
  }) {
    final data = {
      "authtype": authType.value,
      "authvalue": authValue,
      "locale": locale.value,
      "environment": env.value,
    };

    final response =
        methodChannel.invokeMethod<dynamic>('initialize', data).then((res) {
      setup();
    });

    _addEventListener(
        evnetName: NearpayEvent.stateChange,
        callback: (args) {
          NearpayState newState = args['state'];
          state = newState;
        });
  }

  /// calls a native method using a name of the method and a data
  /// also handles the error cases of the transaction
  Future<dynamic> _callAndCheckStatus(String methodName, dynamic data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>(methodName, data);

    if (response['status'] != 200) throw response;

    return response;
  }

  Future<Map<String, dynamic>> purchase({
    required int amount,
    String? transactionUUID,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversal = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
    void Function(List<TransactionReceipt>)? onPurchaseApproved,
    void Function(PurchaseError)? onPurchaseFailed,
  }) async {
    final data = {
      "amount": amount,
      "transaction_uuid": transactionUUID, //Optional
      "customer_reference_number": customerReferenceNumber, //Optional
      "enableReceiptUi": enableReceiptUi, //Optional
      "enableReversal": enableReversal, //Optional
      "finishTimeout": finishTimeout, //Optional
    };

    Map? _response = await methodChannel.invokeMethod<Map>("purchase", data);

    // TODO: handle the fail later
    if (_response == null) {
      throw '';
    }

    // avoid annoying bug with this method
    final response = jsonDecode(jsonEncode(_response));

    if (response["status"] == 200) {
      List<TransactionReceipt> receipts =
          List<Map<String, dynamic>>.from(response["receipts"])
              .map((json) => TransactionReceipt.fromJson(json))
              .toList();

      if (onPurchaseApproved != null) {
        onPurchaseApproved(receipts);
      }

      return response;
    } else {
      if (onPurchaseFailed != null) {
        PurchaseError err = getPurchaseError(response);
        onPurchaseFailed(err);
      }
      throw response;
    }

    // old implementation
    // return _callAndCheckStatus('purchase', data);
  }

  Future<dynamic> refund({
    required int amount,
    required String originalTransactionUUID,
    String? transactionUUID,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversal = true,
    bool editableRefundUI = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
    String? adminPin,
    void Function(List<TransactionReceipt>)? onRefundApproved,
    void Function(RefundError)? onRefundFailed,
  }) async {
    final data = {
      "amount": amount, // Required
      "original_transaction_uuid": originalTransactionUUID, // Required
      "transaction_uuid": transactionUUID, //Optional
      "customer_reference_number": customerReferenceNumber, //Optional
      "enableReceiptUi": enableReceiptUi, // Optional
      "enableReversal": enableReversal, // Optional
      "enableEditableRefundAmountUiableReversalUI":
          editableRefundUI, // Optional
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin,
    };

    Map? _response = await methodChannel.invokeMethod<Map>("refund", data);

    // TODO: handle the fail later
    if (_response == null) {
      throw '';
    }

    // avoid annoying bug with this method
    final response = jsonDecode(jsonEncode(_response));

    if (response["status"] == 200) {
      List<TransactionReceipt> receipts =
          List<Map<String, dynamic>>.from(response["receipts"])
              .map((json) => TransactionReceipt.fromJson(json))
              .toList();

      if (onRefundApproved != null) {
        onRefundApproved(receipts);
      }

      return response;
    } else {
      if (onRefundFailed != null) {
        RefundError err = getRefundError(response);
        onRefundFailed(err);
      }
      throw response;
    }

    // old implementation
    // return _callAndCheckStatus('refund', data);
  }

  Future<dynamic> reconcile({
    bool enableReceiptUi = true,
    int finishTimeout = 60,
    bool enableUiDismiss = true,
    String? adminPin,
    void Function(ReconciliationReceipt)? onReconcileFinished,
    void Function(ReconcileError)? onReconcileFailed,
  }) async {
    final data = {
      "enableReceiptUi": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin // Optional
    };
    Map? _response = await methodChannel.invokeMethod<Map>("reconcile", data);

    // TODO: handle the fail later
    if (_response == null) {
      throw '';
    }

    // avoid annoying bug with this method
    final response = jsonDecode(jsonEncode(_response));

    if (response["status"] == 200) {
      List<ReconciliationReceipt> receipts =
          List<Map<String, dynamic>>.from(response["receipts"])
              .map((json) => ReconciliationReceipt.fromJson(json))
              .toList();

      ReconciliationReceipt receipt = receipts[0];

      if (onReconcileFinished != null) {
        onReconcileFinished(receipt);
      }

      return response;
    } else {
      if (onReconcileFailed != null) {
        ReconcileError err = getReconcileError(response);
        onReconcileFailed(err);
      }
      throw response;
    }

    // old implementation
    // return _callAndCheckStatus('reconcile', data);
  }

  Future<dynamic> reverse({
    required String originalTransactionUUID,
    bool enableReceiptUi = true,
    int finishTimeout = 60,
    bool enableUiDismiss = true,
    void Function(List<TransactionReceipt>)? onReversalFinished,
    void Function(ReversalError)? onReversalFailed,
  }) async {
    var data = {
      "original_transaction_uuid": originalTransactionUUID, // Required
      "enableReceiptUi": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout // Optional
    };
    Map? _response = await methodChannel.invokeMethod<Map>("reverse", data);

    // TODO: handle the fail later
    if (_response == null) {
      throw '';
    }

    // avoid annoying bug with this method
    final response = jsonDecode(jsonEncode(_response));

    if (response["status"] == 200) {
      List<TransactionReceipt> receipts =
          List<Map<String, dynamic>>.from(response["receipts"])
              .map((json) => TransactionReceipt.fromJson(json))
              .toList();

      if (onReversalFinished != null) {
        onReversalFinished(receipts);
      }

      return response;
    } else {
      if (onReversalFailed != null) {
        ReversalError err = getReversalError(response);
        onReversalFailed(err);
      }
      throw response;
    }
    // old implementation
    // return _callAndCheckStatus('reverse', data);
  }

  Future<dynamic> logout() async {
    return _callAndCheckStatus('logout', {})
        .then((_) => _provider.listener.emitStateChange(NearpayState.notReady));
  }

  Future<dynamic> setup() async {
    return _callAndCheckStatus('setup', {}).then((res) {
      _provider.listener.emitStateChange(NearpayState.ready);
      print("=-=-=-=-=-=-=-=-=-= setup sec =-=-=-=-=-=-=-=");
      return res;
    }).catchError((e) {
      _provider.listener.emitStateChange(NearpayState.notReady);
      throw e;
    });
  }

  /// needs future work
  Future<dynamic> session({
    required String sessionID,
    bool enableReceiptUi = true,
    bool enableReversal = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
  }) async {
    var data = {
      "sessionID": sessionID, // Required
      "enableReceiptUi": enableReceiptUi, //Optional
      "enableReversal": enableReversal,
      "finishTimeout": finishTimeout // Optional
    };

    return _callAndCheckStatus('session', data);
  }

  Future<dynamic> receiptToImage(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('receiptToImage', data);
    return jsonDecode(response);
  }

  // listeners
  Function _addEventListener(
      {required NearpayEvent evnetName,
      required dynamic Function(dynamic) callback}) {
    return _provider.listener
        .addEventListener(evnetName: evnetName, callback: callback);
  }

  Function addStateListener(dynamic Function(NearpayState) callback) {
    dynamic _callback(dynamic args) {
      NearpayState newState = args["state"];
      callback(newState);
    }

    return _addEventListener(
      evnetName: NearpayEvent.stateChange,
      callback: _callback,
    );
  }
}
