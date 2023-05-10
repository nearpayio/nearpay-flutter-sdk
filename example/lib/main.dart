// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:nearpay_example/util.dart';
import 'package:nearpay_flutter_sdk/errors/purchase_error/purchase_error.dart';
import 'package:nearpay_flutter_sdk/nearpay.dart';
import 'package:nearpay_flutter_sdk/types.dart';

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
  );

  NearpayState state = NearpayState.notReady;

  @override
  initState() {
    nearpay.addStateListener((newState) {
      setState(() {
        state = newState;
      });
    });
  }

  // sdkInitialize() async {
  //   var jsonResponse = await nearpay.initialize(
  //       authType: authType,
  //       authValue: authvalue,
  //       env: Environments.sandbox,
  //       locale: Locale.localeDefault //optional
  //       );

  //   print("...sdkInitialize....$jsonResponse....");
  // }

  Future<dynamic> purchaseWithRefund() async {
    print("=-=-=-=-= Start Purchase with Refund Action =-=-=-=-=");

    nearpay.purchase(
        amount: 1000,
        onPurchaseApproved: (reciepts) {
          print(
              "=-=-=-=-=-=-=-=-=-=- on purchase approved =-=-=-=-=-=-=-=-=-=-=");
          final String uuid = reciepts[0].transactionUuid;
          nearpay.refund(
            amount: 1000,
            originalTransactionUUID: uuid,
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
        amount: 0001,
        enableReceiptUi: true,
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
        });
  }

  Future<dynamic> reconcileAction() async {
    print("=-=-=-=-= Start Reconcile Action =-=-=-=-=");

    return nearpay.reconcile(
        enableReceiptUi: true,
        adminPin: '0000',
        finishTimeout: 60,
        onReconcileFinished: (receipt) {
          print("=-=-=-=-= Reconcile Success =-=-=-=-=");
          printJson(receipt.toJson());
        },
        onReconcileFailed: (err) {
          print("=-=-=-=-= Reconcile Failed =-=-=-=-=");
        });
  }

  Future<dynamic> logoutAction() async {
    print("=-=-=-=-= Start Logout Action =-=-=-=-=");

    return nearpay.logout().then((response) {
      print("=-=-=-=-= Logout Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Logout Failed =-=-=-=-=");
      print("error, $err");
      throw err;
    });
  }

  Future<dynamic> setupAction() async {
    print("=-=-=-=-= Start Setup Action =-=-=-=-=");

    return nearpay.setup().then((response) {
      print("=-=-=-=-= Setup Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Setup Failed =-=-=-=-=");
      print("error, $err");
      throw err;
    });
  }

  Future<dynamic> sessionAction() async {
    print("=-=-=-=-= Start Session Action =-=-=-=-=");

    return nearpay
        .session(
      sessionID: "ea5e30d4-54c7-4ad9-8372-f798259ff589",
      enableReceiptUi: true,
      enableReversal: true,
      finishTimeout: 60,
    )
        .then((response) {
      print("=-=-=-=-= Session Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Session Failed =-=-=-=-=");
      print("error, $err");
    });
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
            Container(
              color: Colors.black87,
              child: Text(
                "state is: $state",
                style: const TextStyle(color: Colors.white),
              ),
            ),
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
