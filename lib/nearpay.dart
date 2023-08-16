import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/refund_error/refund_error.dart';
import 'package:nearpay_flutter_sdk/errors/refund_error/refund_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/reverse_error/reversal_error.dart';
import 'package:nearpay_flutter_sdk/errors/reverse_error/reversal_error_switch.dart';
import 'package:nearpay_flutter_sdk/errors/session_error/session_error.dart';
import 'package:nearpay_flutter_sdk/errors/session_error/session_error_switch.dart';
import 'package:nearpay_flutter_sdk/listeners/listeners.dart';
import 'package:nearpay_flutter_sdk/models/reconcile_receipt/reconcile_banner.dart';
import 'package:nearpay_flutter_sdk/models/reconcile_receipt/reconcile_receipt.dart';
import 'package:nearpay_flutter_sdk/models/session/session.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_banner.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';
import 'package:nearpay_flutter_sdk/nearpay_provider.dart';
import 'package:nearpay_flutter_sdk/types.dart';
import 'package:nearpay_flutter_sdk/util/util.dart';
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
  bool _initialized = false;

  // NearpayState state = NearpayState.notReady;

  late final NearpayProvider _provider = NearpayProvider(this);

  final MethodChannel methodChannel = const MethodChannel('nearpay');

  Nearpay({
    required this.authType,
    required this.authValue,
    required this.env,
    this.locale = Locale.localeDefault,
  }) {
    // _addEventListener(
    //     evnetName: NearpayEvent.stateChange,
    //     callback: (args) {
    //       NearpayState newState = args['state'];
    //       state = newState;
    //     });
  }

  Future<dynamic> initialize(
      {void Function()? onInitializeSuccess,
      void Function()? onInitializeFail}) async {
    final data = {
      "authtype": authType.value,
      "authvalue": authValue,
      "locale": locale.value,
      "environment": env.value,
      // "channel_name": channelName
    };

    final response =
        await _callAndReturnMapResponse('initialize', data, safe: true);

    if (response["status"] == 200) {
      _initialized = true;
    } else {
      throw "initialize failed";
    }
  }

  Future<TransactionData> purchase({
    required int amount,
    String? transactionId,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversalUi = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
  }) async {
    final data = {
      "amount": amount,
      "job_id": transactionId, //Optional
      "customer_reference_number": customerReferenceNumber, //Optional
      "enableReceiptUi": enableReceiptUi, //Optional
      "enableReversal": enableReversalUi, //Optional
      "finishTimeout": finishTimeout, //Optional
      "enableUiDismiss": enableUiDismiss,
    };

    final response = await _callAndReturnMapResponse(
      "purchase",
      data,
    );

    if (response["status"] == 200) {
      TransactionData receipts = TransactionData.fromJson(response['result']);

      return receipts;
    } else {
      PurchaseError err = getPurchaseError(response);
      throw err;
    }
  }

  Future<TransactionData> refund({
    required int amount,
    required String originalTransactionUUID,
    String? transactionId,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversalUi = true,
    bool editableRefundUI = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
    String? adminPin,
  }) async {
    final data = {
      "amount": amount, // Required
      "original_transaction_uuid": originalTransactionUUID, // Required
      "job_id": transactionId, //Optional
      "customer_reference_number": customerReferenceNumber, //Optional
      "enableReceiptUi": enableReceiptUi, // Optional
      "enableReversal": enableReversalUi, // Optional
      "enableEditableRefundAmountUi": editableRefundUI, // Optional
      "enableUiDismiss": enableUiDismiss,
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin,
    };

    final response = await _callAndReturnMapResponse(
      'refund',
      data,
    );

    if (response["status"] == 200) {
      TransactionData transactionData =
          TransactionData.fromJson(response['result']);
      return transactionData;
    } else {
      RefundError err = getRefundError(response);
      throw err;
    }
  }

  Future<ReconciliationReceipt> reconcile({
    String? reconciliationId,
    bool enableReceiptUi = true,
    int finishTimeout = 60,
    bool enableUiDismiss = true,
    String? adminPin,
  }) async {
    final data = {
      "job_id": reconciliationId,
      "enableReceiptUi": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin, // Optional
      "enableUiDismiss": enableUiDismiss,
    };

    final response = await _callAndReturnMapResponse(
      'reconcile',
      data,
    );

    if (response["status"] == 200) {
      List<ReconciliationReceipt> receipts =
          List<Map<String, dynamic>>.from(response["result"])
              .map((json) => ReconciliationReceipt.fromJson(json))
              .toList();

      ReconciliationReceipt receipt = receipts[0];
      return receipt;
    } else {
      ReconcileError err = getReconcileError(response);
      throw err;
    }
  }

  Future<TransactionData> reverse({
    required String originalTransactionUUID,
    bool enableReceiptUi = true,
    int finishTimeout = 60,
    bool enableUiDismiss = true,
  }) async {
    var data = {
      "original_transaction_uuid": originalTransactionUUID, // Required
      "enableReceiptUi": enableReceiptUi, // Optional
      "finishTimeout": finishTimeout, // Optional
      "enableUiDismiss": enableUiDismiss,
    };
    final response = await _callAndReturnMapResponse(
      'reverse',
      data,
    );

    if (response["status"] == 200) {
      TransactionData receipts = TransactionData.fromJson(response['result']);
      return receipts;
    } else {
      ReversalError err = getReversalError(response);
      throw err;
    }
  }

  Future<dynamic> logout() async {
    final response = await _callAndReturnMapResponse(
      'logout',
      {},
    );

    if (response["status"] == 200) {
      // _provider.listener.emitStateChange(NearpayState.notReady);
    } else {
      throw 'failed to logout';
    }
  }

  Future<dynamic> setup() async {
    final response = await _callAndReturnMapResponse(
      'setup',
      {},
    );

    if (response["status"] == 200) {
      // _provider.listener.emitStateChange(NearpayState.ready);
    } else {
      throw 'failed to setup nearpay';
      // _provider.listener.emitStateChange(NearpayState.notReady);
    }
  }

  /// needs future work
  Future<void> session({
    required String sessionID,
    bool enableReceiptUi = true,
    bool enableReversalUi = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
    void Function(TransactionData)? onSessionOpen,
    void Function(Session)? onSessionClosed,
    void Function(SessionError)? onSessionFailed,
  }) async {
    var data = {
      "sessionID": sessionID, // Required
      "enableReceiptUi": enableReceiptUi, //Optional
      "enableReversal": enableReversalUi,
      "finishTimeout": finishTimeout, // Optional
      "enableUiDismiss": enableUiDismiss,
    };

    final response = await _callAndReturnMapResponse(
      'session',
      data,
    );

    if (response["status"] == 200) {
      TransactionData receipts = TransactionData.fromJson(response['result']);

      if (onSessionOpen != null) {
        onSessionOpen(receipts);
      }
    } else if (response["status"] == 500) {
      if (onSessionClosed != null) {
        Session session = Session.fromJson(response['result']);
        onSessionClosed(session);
      }
    } else {
      SessionError err = getSessionError(response);
      if (onSessionFailed != null) {
        onSessionFailed(err);
      }
    }
  }

  // =-=-=- Queries -=-=-=
  Future<TransactionBannerList> getTransactions({
    int page = 1,
    int limit = 30,
    String? adminPin,
  }) async {
    var data = {
      "page": page,
      "limit": limit,
      "adminPin": adminPin,
    };

    final response = await _callAndReturnMapResponse(
      'getTransactions',
      data,
    );

    if (response["status"] == 200) {
      TransactionBannerList banner =
          TransactionBannerList.fromJson(response['result']);
      return banner;
    } else {
      throw "couldn't get transaction list";
    }
  }

  Future<TransactionData> getTransaction({
    required String transactionUUID,
    String? adminPin,
  }) async {
    var data = {
      "transaction_uuid": transactionUUID, // Required
      "adminPin": adminPin,
    };

    final response = await _callAndReturnMapResponse(
      'getTransaction',
      data,
    );

    if (response["status"] == 200) {
      TransactionData transactionData =
          TransactionData.fromJson(response['result']);

      return transactionData;
    } else {
      throw "couldn't get transaction";
    }
  }

  Future<ReconciliationBannerList> getReconciliations({
    int page = 1,
    int limit = 30,
    String? adminPin,
  }) async {
    var data = {
      "page": page,
      "limit": limit,
      "adminPin": adminPin,
    };

    final response = await _callAndReturnMapResponse(
      'getReconciliations',
      data,
    );

    if (response["status"] == 200) {
      ReconciliationBannerList banner =
          ReconciliationBannerList.fromJson(response['result']);
      return banner;
    } else {
      throw "couldn't get reconiliations list";
    }
  }

  Future<ReconciliationReceipt> getReconciliation({
    required String reconciliationUUID,
    String? adminPin,
  }) async {
    var data = {
      "reconciliation_uuid": reconciliationUUID, // Required
      "adminPin": adminPin,
    };

    final response = await _callAndReturnMapResponse(
      'getReconciliation',
      data,
    );

    if (response["status"] == 200) {
      ReconciliationReceipt transactionData =
          ReconciliationReceipt.fromJson(response['result']);
      return transactionData;
    } else {
      throw "couldn't get reconiliation";
    }
  }

  Future<Uint8List> receiptToImage({
    required TransactionReceipt receipt,
    int width = 850,
    int fontSize = 1,
  }) async {
    var data = {
      "receipt": jsonEncode(receipt), // Required
      "receipt_width": width,
      "receipt_font_size": fontSize,
    };

    final response = await _callAndReturnMapResponse(
      'receiptToImage',
      data,
    );

    if (response['status'] != 200) throw 'failed to print receipt to image';

    List<int> bitmap = List.from(response['result'])
        .cast<double>()
        .map((bit) => bit.toInt())
        .toList();

    final arr = Uint8List.fromList(bitmap);

    return arr;
  }

  /// calls a native method using a name of the method and a data
  /// also handles the error cases of the transaction
  Future<Map<String, dynamic>> _callAndReturnMapResponse(
      String methodName, dynamic data,
      {bool safe = false}) async {
    if (!safe && !_initialized) {
      throw "you can't call method ($methodName) before initialize";
    }

    String channelName = "$methodName-${Uuid().v4()}";
    data['channel_name'] = channelName;
    final xxxxx = await methodChannel.invokeMethod<dynamic>(methodName, data);

    final eventChannel = EventChannel(channelName);

    final tempResponse =
        await eventChannel.receiveBroadcastStream().firstWhere((_) => true);
    final Map<String, dynamic> response = jsonDecode(jsonEncode(tempResponse));

    return response;
  }

  // listeners
  Function _addEventListener(
      {required NearpayEvent evnetName,
      required dynamic Function(dynamic) callback}) {
    return _provider.listener
        .addEventListener(evnetName: evnetName, callback: callback);
  }

  // Function addStateListener(dynamic Function(NearpayState) callback) {
  //   dynamic _callback(dynamic args) {
  //     NearpayState newState = args["state"];
  //     callback(newState);
  //   }

  //   return _addEventListener(
  //     evnetName: NearpayEvent.stateChange,
  //     callback: _callback,
  //   );
  // }
}
