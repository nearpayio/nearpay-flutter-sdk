// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:nearpay_example/util.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/models/session/session.dart';
import 'package:nearpay_flutter_sdk/nearpay.dart';
import 'package:nearpay_flutter_sdk/types.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

Future<void> main() async {
  // await dotenv.load(fileName: '.env');

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final nearpay = Nearpay(
    authType: AuthenticationType.email,
    authValue: "f.alhajeri@nearpay.io",
    env: Environments.sandbox,
    locale: Locale.localeDefault,
  );

  // NearpayState state = NearpayState.notReady;

  @override
  initState() {
    nearpay.initialize(onInitializeSuccess: () {
      print("nearpay initialized successfully");
    }, onInitializeFail: () {
      print("nearpay initialize failed");
    });
  }

  Future<dynamic> purchaseWithRefund() async {
    print("=-=-=-=-= Start Purchase with Refund Action =-=-=-=-=");

    nearpay.purchase(
        amount: 1000,
        onPurchaseApproved: (reciepts) {
          print(
              "=-=-=-=-=-=-=-=-=-=- on purchase approved =-=-=-=-=-=-=-=-=-=-=");
          final String transactionUuid = reciepts[0].transactionUuid;
          nearpay.refund(
            amount: 1000, // [Required], means 10.00
            originalTransactionUUID:
                transactionUuid, // [Required] the orginal trnasaction uuid that you want to refund
            transactionUUID:
                uuid.v4(), //[Optional] speacify the transaction uuid
            customerReferenceNumber: '', //[Optional]
            enableReceiptUi: true, // [Optional] show the reciept in ui
            enableReversalUi:
                true, //[Optional] enable reversal of transaction from ui
            editableRefundUI:
                true, // [Optional] edit the reversal amount from uid
            enableUiDismiss: true, //[Optional] the ui is dimissible
            finishTimeout: 60, //[Optional] finish timeout in seconds
            adminPin:
                '0000', // [Optional] when you add the admin pin here , the UI for admin pin won't be shown.
            onRefundApproved: (reciepts) {
              print(
                  "=-=-=-=-=-=-=-=-=-=- on refund approved =-=-=-=-=-=-=-=-=-=-=");
            },
            onRefundFailed: (err) {
              print(
                  "=-=-=-=-=-=-=-=-=-=- on refund failed =-=-=-=-=-=-=-=-=-=-=");
            },
          );
        },
        onPurchaseFailed: (err) {
          print(
              "=-=-=-=-=-=-=-=-=-=- on purchase failed =-=-=-=-=-=-=-=-=-=-=");
        });
  }

  Future<dynamic> purchaseWithReverse() async {
    print("=-=-=-=-= Start Purchase with Reverse Action =-=-=-=-=");

    nearpay.purchase(
        amount: 1000,
        onPurchaseApproved: (reciepts) {
          print(
              "=-=-=-=-=-=-=-=-=-=- on purchase approved =-=-=-=-=-=-=-=-=-=-=");
          final String uuid = reciepts[0].transactionUuid;
          nearpay.reverse(
            originalTransactionUUID: uuid,
            enableReceiptUi: true,
            enableUiDismiss: true,
            finishTimeout: 60,
            onReversalFinished: (reciepts) {
              print(
                  "=-=-=-=-=-=-=-=-=-=- on reverse approved =-=-=-=-=-=-=-=-=-=-=");
            },
            onReversalFailed: (err) {
              print(
                  "=-=-=-=-=-=-=-=-=-=- on reverse failed =-=-=-=-=-=-=-=-=-=-=");
            },
          );
        },
        onPurchaseFailed: (err) {
          print(
              "=-=-=-=-=-=-=-=-=-=- on purchase failed =-=-=-=-=-=-=-=-=-=-=");
        });
  }

  Future<dynamic> purchaseAction() async {
    print("=-=-=-=-= Start Purchase Action =-=-=-=-=");
    return nearpay.purchase(
      amount: 0001, // [Required] ammount you want to set .
      transactionUUID: uuid
          .v4(), // [Optional] specefy the transaction uuid for later referance
      customerReferenceNumber:
          '123', // [Optional] any number you want to add as a refrence Any string as a reference number
      enableReceiptUi: true, // [Optional] show the reciept in ui
      enableReversalUi:
          true, // [Optional] it will allow you to enable or disable the reverse button
      enableUiDismiss: true, // [Optional] the ui is dimissible
      finishTimeout: 60, // [Optional] finish timeout in seconds
      onPurchaseApproved: (receipts) {
        print(
            "=-=-=-=-=-=-=-=-=-=- on purchase approved =-=-=-=-=-=-=-=-=-=-=");
        receipts.forEach((receipt) {
          printJson(receipt.toJson());
        });
      },
      onPurchaseFailed: (err) {
        print("=-=-=-=-= Purchase Failed =-=-=-=-=");

        if (err is PurchaseDeclined) {
          print("declined");
        }
        if (err is PurchaseGeneralFailure) {
          print("general");
        }
        if (err is PurchaseInvalidStatus) {
          print('invalid');
        }
      },
    );
  }

  Future<dynamic> reconcileAction() async {
    print("=-=-=-=-= Start Reconcile Action =-=-=-=-=");

    return nearpay.reconcile(
      enableReceiptUi: true,
      enableUiDismiss: true,
      adminPin: '0000',
      finishTimeout: 60,
      onReconcileFinished: (receipt) {
        print("=-=-=-=-= Reconcile Success =-=-=-=-=");
        printJson(receipt.toJson());
      },
      onReconcileFailed: (err) {
        print("=-=-=-=-= Reconcile Failed =-=-=-=-=");
      },
    );
  }

  Future<dynamic> logoutAction() async {
    print("=-=-=-=-= Start Logout Action =-=-=-=-=");

    return nearpay.logout();
  }

  Future<dynamic> setupAction() async {
    print("=-=-=-=-= Start Setup Action =-=-=-=-=");

    return nearpay.setup();
  }

  Future<dynamic> sessionAction() async {
    print("=-=-=-=-= Start Session Action =-=-=-=-=");

    return nearpay.session(
      sessionID: 'ea5e30d4-54c7-4ad9-8372-f798259ff589', // Required
      enableReceiptUi: true, // [Optional] show the reciept in ui
      enableReversalUi:
          true, //[Optional] enable reversal of transaction from ui
      enableUiDismiss: true, //[Optional] the ui is dimissible
      finishTimeout: 60, //[Optional] finish timeout in seconds
      onSessionClosed: (session) {
        print("session closed");
        print(session);
      },
      onSessionOpen: (receipt) {
        print("session opened");
        print(receipt);
      },
      onSessionFailed: (err) {
        print("session error");
        print(err);
      },
    );
  }

  showToast(String message, bool isError) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nearpay Example'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () async {
                purchaseAction();
              },
              child: const Text("Purchase"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                purchaseWithRefund();
              },
              child: const Text("Purchase and Refund"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                purchaseWithReverse();
              },
              child: const Text("Purchase and Reverse"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                reconcileAction();
              },
              child: const Text("RECONCILE"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                setupAction();
              },
              child: const Text("Setup"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                logoutAction();
              },
              child: const Text("Logout"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () async {
                sessionAction();
              },
              child: const Text("Session"),
            ),
          ],
        ),
      ),
    );
  }
}
