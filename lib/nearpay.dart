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
  static const MethodChannel methodChannel = const MethodChannel('nearpay');

  static Future<dynamic> initialize({
    required AuthenticationType authType,
    required String authValue,
    required Environments env,
    Locale locale = Locale.localeDefault,
  }) async {
    final data = {
      "authtype": authType.value,
      "authvalue": authValue,
      "locale": locale.value,
      "environment": env.value,
    };

    final response =
        await methodChannel.invokeMethod<dynamic>('initialize', data);
    return response;
  }

  static Future<dynamic> purchase({
    required int amount,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversal = true,
    int finishTimeout = 60,
  }) async {
    final data = {
      "amount": amount,
      "customer_reference_number": customerReferenceNumber,
      "isEnableUI": enableReceiptUi,
      "isEnableReversal": enableReversal,
      "finishTimeout": finishTimeout,
    };

    final response =
        await methodChannel.invokeMethod<dynamic>('purchase', data);
    return response;
  }

  static Future<dynamic> refund({
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
      "isEnableUI": enableReceiptUi, // Optional
      "isEnableReversal": enableReversal, // Optional
      "isEditableReversalUI": editableRefundUI, // Optional
      "finishTimeout": finishTimeout, // Optional
    };

    if (adminPin != null) {
      data["adminPin"] = adminPin;
    }

    final response = await methodChannel.invokeMethod<dynamic>('refund', data);
    return response;
  }

  static Future<dynamic> reconcile({
    bool enableReceiptUi = true,
    int finishTimeout = 60,
    String? adminPin,
  }) async {
    final data = {
      "isEnableUI": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout, // Optional
      //"adminPin" : "0000" // Optional
    };

    if (adminPin != null) {
      data["adminPin"] = adminPin;
    }

    final response =
        await methodChannel.invokeMethod<dynamic>('reconcile', data);
    return response;
  }

  static Future<dynamic> reverse({
    required String transactionUUID,
    bool enableReceiptUi = true,
    int finishTimeout = 60,
  }) async {
    var data = {
      "transaction_uuid": transactionUUID, // Required
      "isEnableUI": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout // Optional
    };

    final response = await methodChannel.invokeMethod<dynamic>('reverse', data);
    return response;
  }

  static Future<dynamic> logout() async {
    final response = await methodChannel.invokeMethod<dynamic>('logout');
    return response;
  }

  static Future<dynamic> setup() async {
    final response = await methodChannel.invokeMethod<dynamic>('setup');
    return response;
  }

  static Future<dynamic> session({
    required String sessionID,
    bool enableReceiptUi = true,
    bool enableReversal = true,
    int finishTimeout = 60,
  }) async {
    var data = {
      "sessionID": sessionID, // Required
      "isEnableUI": enableReceiptUi, //Optional
      "isEnableReversal": enableReversal,
      "finishTimeout": finishTimeout // Optional
    };
    final response = await methodChannel.invokeMethod<dynamic>('session', data);
    return response;
  }

  static Future<dynamic> receiptToImage(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('receiptToImage', data);
    return response;
  }
}
