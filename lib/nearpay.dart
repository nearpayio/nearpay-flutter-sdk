import 'dart:convert';
import 'dart:ffi';
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
import 'package:nearpay_flutter_sdk/errors/user_session_error/user_session_error.dart';
import 'package:nearpay_flutter_sdk/errors/user_session_error/user_session_error_switch.dart';
import 'package:nearpay_flutter_sdk/listeners/listeners.dart';
import 'package:nearpay_flutter_sdk/models/reconcile_receipt/reconcile_banner.dart';
import 'package:nearpay_flutter_sdk/models/reconcile_receipt/reconcile_receipt.dart';
import 'package:nearpay_flutter_sdk/models/session/session.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_banner.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';
import 'package:nearpay_flutter_sdk/models/user_session/user_session.dart';
import 'package:nearpay_flutter_sdk/nearpay_provider.dart';
import 'package:nearpay_flutter_sdk/types.dart';
import 'package:nearpay_flutter_sdk/util/util.dart';
import 'package:uuid/uuid.dart';
import 'package:nearpay_flutter_sdk/errors/reconcile_error/reconcile_error.dart';

enum Environments {
  sandbox("sandbox"),
  production("production"),
  testing("testing"),
  staging("staging");

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

enum NetworkConfiguration {
  SIM_ONLY('SIM_ONLY'),
  SIM_PREFERRED('SIM_PREFERRED'),
  DEFAULT('DEFAULT');

  const NetworkConfiguration(this.value);
  final String value;
}

enum UIPosition {
  TOP_START('TOP_START'),
  TOP_END('TOP_END'),
  TOP_RIGHT('TOP_RIGHT'),
  TOP_LEFT('TOP_LEFT'),
  BOTTOM_START('BOTTOM_START'),
  BOTTOM_END('BOTTOM_END'),
  BOTTOM_RIGHT('BOTTOM_RIGHT'),
  BOTTOM_LEFT('BOTTOM_LEFT'),
  CENTER_START('CENTER_START'),
  CENTER_END('CENTER_END'),
  CENTER_RIGHT('CENTER_RIGHT'),
  CENTER_LEFT('CENTER_LEFT'),
  CENTER_TOP('CENTER_TOP'),
  CENTER_BOTTOM('CENTER_BOTTOM'),
  CENTER('CENTER'),
  DEFAULT('DEFAULT');

  const UIPosition(this.value);
  final String value;
}

enum Regions {
  SAUDI("SAUDI"),
  JORDAN("JORDAN"),
  AFRICA("AFRICA");

  const Regions(this.value);
  final String value;
}

var uuid = Uuid();

class Nearpay {
  final AuthenticationType _authType;
  final String _authValue;
  final Environments _env;
  final Locale _locale;
  final bool _uiLoading;
  final NetworkConfiguration _networkConfig;
  final UIPosition _uiPosition;
  final Regions _region;
  final String? _arabicPaymentText;
  final String? _englishPaymentText;
  bool _initialized = false;

  // NearpayState state = NearpayState.notReady;

  late final NearpayProvider _provider = NearpayProvider(this);

  final MethodChannel methodChannel = const MethodChannel('nearpay');

  Nearpay({
    required AuthenticationType authType,
    required String authValue,
    required Environments env,
    required Regions region,
    Locale locale = Locale.localeDefault,
    NetworkConfiguration networkConfig = NetworkConfiguration.DEFAULT,
    bool uiLoading = true,
    UIPosition uiPosition = UIPosition.DEFAULT,
    String? arabicPaymentText,
    String? englishPaymentText,
  })  : _locale = locale,
        _env = env,
        _region = region,
        _authValue = authValue,
        _authType = authType,
        _networkConfig = networkConfig,
        _uiLoading = uiLoading,
        _uiPosition = uiPosition,
        _arabicPaymentText = arabicPaymentText,
        _englishPaymentText = englishPaymentText {
    // _addEventListener(
    //     evnetName: NearpayEvent.stateChange,
    //     callback: (args) {
    //       NearpayState newState = args['state'];
    //       state = newState;
    //     });
  }

  Future<dynamic> initialize() async {
    final data = {
      "authtype": _authType.value,
      "authvalue": _authValue,
      "locale": _locale.value,
      "environment": _env.value,
      "network_configuration": _networkConfig.value,
      "ui_position": _uiPosition.value,
      "loading_ui": _uiLoading,
      "arabic_payment_text": _arabicPaymentText,
      "english_payment_text": _englishPaymentText,
      "region": _region.value
    };

    final response =
        await _callAndReturnMapResponse('initialize', data, safe: true);

    if (response["status"] == 200) {
      _initialized = true;
    } else {
      throw response;
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
      throw response;
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
      throw response;
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
    // void Function(SessionError)? onSessionFailed,
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
    } else if (response["status"] == 210) {
      if (onSessionClosed != null) {
        Session session = Session.fromJson(response['result']);
        onSessionClosed(session);
      }
    } else {
      SessionError err = getSessionError(response);
      throw err;
    }
  }

  // =-=-=- Queries -=-=-=
  Future<TransactionBannerList> getTransactionsList({
    int page = 1,
    int limit = 30,
    String? adminPin,
    String? customerReferenceNumber,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var data = {
      "page": page,
      "limit": limit,
      "adminPin": adminPin,
      "start_date": startDate?.toIso8601String(),
      "end_date": endDate?.toIso8601String(),
      "customer_reference_number": customerReferenceNumber
    };

    final response = await _callAndReturnMapResponse(
      'getTransactionsList',
      data,
    );

    if (response["status"] == 200) {
      TransactionBannerList banner =
          TransactionBannerList.fromJson(response['result']);
      return banner;
    } else {
      throw response;
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
      throw response;
    }
  }

  Future<ReconciliationBannerList> getReconciliationsList({
    int page = 1,
    int limit = 30,
    String? adminPin,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    var data = {
      "page": page,
      "limit": limit,
      "adminPin": adminPin,
      "start_date": startDate?.toIso8601String(),
      "end_date": endDate?.toIso8601String(),
    };

    final response = await _callAndReturnMapResponse(
      'getReconciliationsList',
      data,
    );

    if (response["status"] == 200) {
      ReconciliationBannerList banner =
          ReconciliationBannerList.fromJson(response['result']);
      return banner;
    } else {
      throw response;
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
      throw response;
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

  Future<Uint8List> reconciliationReceiptToImage({
    required ReconciliationReceipt receipt,
    int width = 850,
    int fontSize = 1,
  }) async {
    var data = {
      "receipt": jsonEncode(receipt), // Required
      "receipt_width": width,
      "receipt_font_size": fontSize,
    };

    final response = await _callAndReturnMapResponse(
      'reconciliationReceiptToImage',
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

  Future<void> getUserSession({
    void Function(UserSessionError)? onSessionFailed,
    void Function()? onSessionFree,
    void Function(String)? onSessionBusy,
    void Function(UserSession)? onSessionInfo,
  }) async {
    final response = await _callAndReturnMapResponse(
      'getUserSession',
      {},
    );

    final status = response['status'];

    // user session info
    if (status == 200) {
      UserSession session = UserSession.fromJson(response['result']);
      if (onSessionInfo != null) onSessionInfo(session);
    }
    // user session free
    else if (status == 201) {
      if (onSessionFree != null) onSessionFree();
    }
    // user session busy
    else if (status == 202) {
      if (onSessionBusy != null) onSessionBusy(response['message']);
    } else {
      UserSessionError err = getUserSessionError(response);
      throw err;
    }
  }

  /// calls a native method using a name of the method and a data
  /// also handles the error cases of the transaction
  Future<Map<String, dynamic>> _callAndReturnMapResponse(
      String methodName, dynamic data,
      {bool safe = false}) async {
    if (!safe && !_initialized) {
      throw "you can't call method ($methodName) before initialize";
    }

    final tempResponse =
        await methodChannel.invokeMethod<dynamic>(methodName, data);

    // we need this decode encode to resolve some flutter type issues
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
