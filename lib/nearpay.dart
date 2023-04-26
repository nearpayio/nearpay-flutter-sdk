import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/listeners/listeners.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';
import 'package:nearpay_flutter_sdk/nearpay_provider.dart';
import 'package:nearpay_flutter_sdk/types.dart';

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
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversal = true,
    int finishTimeout = 60,
    void Function(List<TransactionReceipt>)? onPurchaseApproved,
    void Function(PurchaseError)? onPurchaseFailed,
  }) async {
    final data = {
      "amount": amount,
      "customer_reference_number": customerReferenceNumber,
      "enableReceiptUi": enableReceiptUi,
      "enableReversal": enableReversal,
      "finishTimeout": finishTimeout,
    };

    Map? _response = await methodChannel.invokeMethod<Map>("purchase", data);

    // TODO: handle the fail later
    if (_response == null) {
      throw '';
    }

    final response = jsonDecode(jsonEncode(_response));
    // final response = Map<String, dynamic>.from(_response);

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
        // onPurchaseFailed()
      }
      throw response;
    }

    // old implementation
    // return _callAndCheckStatus('purchase', data);
  }

  Future<dynamic> refund({
    required int amount,
    required String transactionUUID,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversal = true,
    bool editableRefundUI = true,
    int finishTimeout = 60,
    String? adminPin,
  }) async {
    final data = {
      "amount": amount, // Required
      "transaction_uuid": transactionUUID, // Required
      "customer_reference_number": customerReferenceNumber, //Optional
      "enableReceiptUi": enableReceiptUi, // Optional
      "enableReversal": enableReversal, // Optional
      "enableEditableRefundAmountUiableReversalUI":
          editableRefundUI, // Optional
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin,
    };

    return _callAndCheckStatus('refund', data);
  }

  Future<dynamic> reconcile({
    bool enableReceiptUi = true,
    int finishTimeout = 60,
    String? adminPin,
  }) async {
    final data = {
      "enableReceiptUi": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin // Optional
    };

    return _callAndCheckStatus('reconcile', data);
  }

  Future<dynamic> reverse({
    required String transactionUUID,
    bool enableReceiptUi = true,
    int finishTimeout = 60,
  }) async {
    var data = {
      "transaction_uuid": transactionUUID, // Required
      "enableReceiptUi": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout // Optional
    };
    return _callAndCheckStatus('reverse', data);
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
