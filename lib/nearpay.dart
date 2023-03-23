import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

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

    final response = methodChannel.invokeMethod<dynamic>('initialize', data);
  }

  /// calls a native method using a name of the method and a data
  /// also handles the error cases of the transaction
  Future<dynamic> _callAndCheckStatus(String methodName, dynamic data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>(methodName, data);

    final jsonResponse = jsonDecode(response);

    if (jsonResponse['status'] != 200) throw jsonResponse;

    return jsonResponse;
  }

  Future<dynamic> purchase({
    required int amount,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversal = true,
    int finishTimeout = 60,
  }) async {
    final data = {
      "amount": amount,
      "customer_reference_number": customerReferenceNumber,
      "enableReceiptUi": enableReceiptUi,
      "enableReversal": enableReversal,
      "finishTimeout": finishTimeout,
    };

    return _callAndCheckStatus('purchase', data);
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

    // final response = await methodChannel.invokeMethod<dynamic>('refund', data);
    // return response;
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
    // final response =
    //     await methodChannel.invokeMethod<dynamic>('reconcile', data);
    //     return response;
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
    // final response = await methodChannel.invokeMethod<dynamic>('reverse', data);
    // return response;
  }

  Future<dynamic> logout() async {
    final response = await methodChannel.invokeMethod<dynamic>('logout');
    return jsonDecode(response);
  }

  Future<dynamic> setup() async {
    final response = await methodChannel.invokeMethod<dynamic>('setup');
    return jsonDecode(response);
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

    final response = await methodChannel.invokeMethod<dynamic>('session', data);
    return jsonDecode(response);
  }

  Future<dynamic> receiptToImage(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('receiptToImage', data);
    return jsonDecode(response);
  }
}
