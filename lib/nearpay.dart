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

  static Future<dynamic> initialize(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('initialize', data);
    return response;
  }

  static Future<dynamic> purchase(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('purchase', data);
    return response;
  }

  static Future<dynamic> refund(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('refund', data);
    return response;
  }

  static Future<dynamic> reconcile(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('reconcile', data);
    return response;
  }

  static Future<dynamic> reverse(Map<dynamic, dynamic> data) async {
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

  static Future<dynamic> session(Map<dynamic, dynamic> data) async {
    final response = await methodChannel.invokeMethod<dynamic>('session', data);
    return response;
  }

  static Future<dynamic> receiptToImage(Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('receiptToImage', data);
    return response;
  }

  static Future<dynamic> updateAuthentication(
      Map<dynamic, dynamic> data) async {
    final response =
        await methodChannel.invokeMethod<dynamic>('updateAuthentication', data);
    return response;
  }

  static Future<dynamic> getTransactions({
    int page = 1,
    int limit = 30,
    String? adminPin,
  }) async {
    final data = {
      "page": page,
      "limit": limit,
      "adminPin": adminPin,
    };

    final response =
        await methodChannel.invokeMethod<dynamic>('getTransactionsList', data);
    return response;
  }

  static Future<dynamic> getTransaction({
    required String transactionUuid,
    String? adminPin,
  }) async {
    final data = {
      "adminPin": adminPin,
      "transactionUuid": transactionUuid,
    };

    final response =
        await methodChannel.invokeMethod<dynamic>('getTransaction', data);
    return response;
  }

  static Future<dynamic> getReconciliationsList({
    int page = 1,
    int limit = 30,
    String? adminPin,
  }) async {
    final data = {
      "page": page,
      "limit": limit,
      "adminPin": adminPin,
    };

    final response = await methodChannel.invokeMethod<dynamic>(
        'getReconciliationsList', data);
    return response;
  }

  static Future<dynamic> getReconciliation({
    required String reconciliationUuid,
    String? adminPin,
  }) async {
    final data = {
      "adminPin": adminPin,
      "reconciliationUuid": reconciliationUuid,
    };

    final response =
        await methodChannel.invokeMethod<dynamic>('getReconciliation', data);
    return response;
  }
}
