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
import 'package:nearpay_flutter_sdk/models/reconcile_receipt/reconcile_receipt.dart';
import 'package:nearpay_flutter_sdk/models/session/session.dart';
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

  /// calls a native method using a name of the method and a data
  /// also handles the error cases of the transaction
  Future<EventChannel> _callAndReturnChannel(
      String methodName, dynamic data, Function(Map<String, dynamic>) callback,
      {bool safe = false}) async {
    if (!safe && !_initialized) {
      throw "you can't call method ($methodName) before initialize";
    }

    String channelName = "$methodName-${Uuid().v4()}";
    data['channel_name'] = channelName;
    final xxxxx = await methodChannel.invokeMethod<dynamic>(methodName, data);

    final eventChannel = EventChannel(channelName);
    eventChannel.receiveBroadcastStream().forEach((tempResponse) {
      // we need to do this transformation in order the flutter type system to work
      final Map<String, dynamic> response =
          jsonDecode(jsonEncode(tempResponse));

      callback(response);
    });
    return eventChannel;
  }

  Future<void> initialize(
      {void Function()? onInitializeSuccess,
      void Function()? onInitializeFail}) async {
    final data = {
      "authtype": authType.value,
      "authvalue": authValue,
      "locale": locale.value,
      "environment": env.value,
      // "channel_name": channelName
    };

    _callAndReturnChannel('initialize', data, (response) {
      if (response["status"] == 200) {
        _initialized = true;
        if (onInitializeSuccess != null) {
          onInitializeSuccess();
        }
      } else {
        if (onInitializeFail != null) {
          onInitializeFail();
        }
      }
    }, safe: true);
  }

  Future<void> purchase({
    required int amount,
    String? transactionUUID,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversalUi = true,
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
      "enableReversal": enableReversalUi, //Optional
      "finishTimeout": finishTimeout, //Optional
      "enableUiDismiss": enableUiDismiss,
    };

    await _callAndReturnChannel(
      "purchase",
      data,
      (response) {
        if (response["status"] == 200) {
          List<TransactionReceipt> receipts =
              List<Map<String, dynamic>>.from(response["receipts"])
                  .map((json) => TransactionReceipt.fromJson(json))
                  .toList();

          if (onPurchaseApproved != null) {
            onPurchaseApproved(receipts);
          }
        } else {
          if (onPurchaseFailed != null) {
            PurchaseError err = getPurchaseError(response);
            onPurchaseFailed(err);
          }
        }
      },
    );
  }

  Future<dynamic> refund({
    required int amount,
    required String originalTransactionUUID,
    String? transactionUUID,
    String customerReferenceNumber = "",
    bool enableReceiptUi = true,
    bool enableReversalUi = true,
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
      "enableReversal": enableReversalUi, // Optional
      "enableEditableRefundAmountUiableReversalUI":
          editableRefundUI, // Optional
      "enableUiDismiss": enableUiDismiss,
      "finishTimeout": finishTimeout, // Optional
      "adminPin": adminPin,
    };

    _callAndReturnChannel('refund', data, (response) {
      if (response["status"] == 200) {
        List<TransactionReceipt> receipts =
            List<Map<String, dynamic>>.from(response["receipts"])
                .map((json) => TransactionReceipt.fromJson(json))
                .toList();
        if (onRefundApproved != null) {
          onRefundApproved(receipts);
        }
      } else {
        if (onRefundFailed != null) {
          RefundError err = getRefundError(response);
          onRefundFailed(err);
        }
      }
    });

    // old implementation
    // Map? _response = await methodChannel.invokeMethod<Map>("refund", data);

    // // TODO: handle the fail later
    // if (_response == null) {
    //   throw '';
    // }

    // // avoid annoying bug with this method
    // final response = jsonDecode(jsonEncode(_response));

    // if (response["status"] == 200) {
    //   List<TransactionReceipt> receipts =
    //       List<Map<String, dynamic>>.from(response["receipts"])
    //           .map((json) => TransactionReceipt.fromJson(json))
    //           .toList();

    //   if (onRefundApproved != null) {
    //     onRefundApproved(receipts);
    //   }

    //   return response;
    // } else {
    //   if (onRefundFailed != null) {
    //     RefundError err = getRefundError(response);
    //     onRefundFailed(err);
    //   }
    //   throw response;
    // }

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
      "adminPin": adminPin, // Optional
      "enableUiDismiss": enableUiDismiss,
    };

    _callAndReturnChannel('reconcile', data, (response) {
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
    });

    // old implementation
    // Map? _response = await methodChannel.invokeMethod<Map>("reconcile", data);

    // // TODO: handle the fail later
    // if (_response == null) {
    //   throw '';
    // }

    // // avoid annoying bug with this method
    // final response = jsonDecode(jsonEncode(_response));

    // if (response["status"] == 200) {
    //   List<ReconciliationReceipt> receipts =
    //       List<Map<String, dynamic>>.from(response["receipts"])
    //           .map((json) => ReconciliationReceipt.fromJson(json))
    //           .toList();

    //   ReconciliationReceipt receipt = receipts[0];

    //   if (onReconcileFinished != null) {
    //     onReconcileFinished(receipt);
    //   }

    //   return response;
    // } else {
    //   if (onReconcileFailed != null) {
    //     ReconcileError err = getReconcileError(response);
    //     onReconcileFailed(err);
    //   }
    //   throw response;
    // }

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
      "finishTimeout": finishTimeout, // Optional
      "enableUiDismiss": enableUiDismiss,
    };
    _callAndReturnChannel('reverse', data, (response) {
      if (response["status"] == 200) {
        List<TransactionReceipt> receipts =
            List<Map<String, dynamic>>.from(response["receipts"])
                .map((json) => TransactionReceipt.fromJson(json))
                .toList();

        if (onReversalFinished != null) {
          onReversalFinished(receipts);
        }
      } else {
        if (onReversalFailed != null) {
          ReversalError err = getReversalError(response);
          onReversalFailed(err);
        }
      }
    });

    // old implementation
    // Map? _response = await methodChannel.invokeMethod<Map>("reverse", data);

    // // TODO: handle the fail later
    // if (_response == null) {
    //   throw '';
    // }

    // // avoid annoying bug with this method
    // final response = jsonDecode(jsonEncode(_response));

    // if (response["status"] == 200) {
    //   List<TransactionReceipt> receipts =
    //       List<Map<String, dynamic>>.from(response["receipts"])
    //           .map((json) => TransactionReceipt.fromJson(json))
    //           .toList();

    //   if (onReversalFinished != null) {
    //     onReversalFinished(receipts);
    //   }

    //   return response;
    // } else {
    //   if (onReversalFailed != null) {
    //     ReversalError err = getReversalError(response);
    //     onReversalFailed(err);
    //   }
    //   throw response;
    // }

    // old implementation
    // return _callAndCheckStatus('reverse', data);
  }

  Future<dynamic> logout() async {
    return _callAndReturnChannel('logout', {}, (response) {
      if (response["status"] == 200) {
        _provider.listener.emitStateChange(NearpayState.notReady);
      }
    });
  }

  Future<dynamic> setup() async {
    await _callAndReturnChannel(
      'setup',
      {},
      (response) {
        if (response["status"] == 200) {
          _provider.listener.emitStateChange(NearpayState.ready);
        } else {
          _provider.listener.emitStateChange(NearpayState.notReady);
        }
      },
    );

    // responseChannel.receiveBroadcastStream().forEach((response) {});

    // old implementation
    // return _callAndReturnChannel('setup', {}).then((res) {
    //   _provider.listener.emitStateChange(NearpayState.ready);
    //   return res;
    // }).catchError((e) {
    //   _provider.listener.emitStateChange(NearpayState.notReady);
    //   throw e;
    // });
  }

  /// needs future work
  Future<dynamic> session({
    required String sessionID,
    bool enableReceiptUi = true,
    bool enableReversalUi = true,
    bool enableUiDismiss = true,
    int finishTimeout = 60,
    void Function(List<TransactionReceipt>)? onSessionOpen,
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

    return _callAndReturnChannel('session', data, (response) {
      if (response["status"] == 200) {
        List<TransactionReceipt> receipts =
            List<Map<String, dynamic>>.from(response["receipts"])
                .map((json) => TransactionReceipt.fromJson(json))
                .toList();
        if (onSessionOpen != null) {
          onSessionOpen(receipts);
        }
      } else if (response["status"] == 500) {
        if (onSessionClosed != null) {
          Session session = Session.fromJson(response['session']);
          onSessionClosed(session);
        }
      } else {
        SessionError err = getSessionError(response);
        if (onSessionFailed != null) {
          onSessionFailed(err);
        }
      }
    });
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
