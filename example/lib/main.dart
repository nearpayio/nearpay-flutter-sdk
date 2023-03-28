// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nearpay_flutter_sdk/nearpay.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');

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
    authValue: dotenv.get("TESTING_EMAIL", fallback: ""),
    env: Environments.sandbox,
  );

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

    await purchaseAction().then((value) {
      final transactionUUID = value['list'][0]['transaction_uuid'];
      refundAction(transactionUUID).catchError((e) {
        showToast(e['message'], true);
      });
    }).catchError((e) {
      showToast(e['message'], true);
    });
  }

  Future<dynamic> purchaseWithReverse() async {
    print("=-=-=-=-= Start Purchase with Reverse Action =-=-=-=-=");

    return purchaseAction().then((value) {
      final uuid = value['list'][0]['transaction_uuid'];
      reverseAction(uuid).catchError((e) {
        showToast(e['message'], true);
      });
    }).catchError((e) {
      showToast(e['message'], true);
    });
    ;
  }

  Future<dynamic> purchaseAction() async {
    print("=-=-=-=-= Start Purchase Action =-=-=-=-=");
    return nearpay
        .purchase(amount: 0001, enableReceiptUi: true)
        .then((response) {
      print("=-=-=-=-= Purchase Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Purchase Failed =-=-=-=-=");
      print("error, $err");
      throw err;
    });
  }

  Future<dynamic> refundAction(String uuid) async {
    print("=-=-=-=-= Start Refund Action =-=-=-=-=");
    return nearpay
        .refund(
      amount: 0001,
      transactionUUID: uuid,
      customerReferenceNumber: "123",
      adminPin: '0000',
      editableRefundUI: true,
      enableReceiptUi: true,
      enableReversal: true,
      finishTimeout: 60,
    )
        .then((response) {
      print("=-=-=-=-= Refund Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Refund Failed =-=-=-=-=");
      print("error, $err");
      throw err;
    });
  }

  Future<dynamic> reconcileAction() async {
    print("=-=-=-=-= Start Reconcile Action =-=-=-=-=");

    return nearpay
        .reconcile(
      enableReceiptUi: true,
      adminPin: '0000',
      finishTimeout: 60,
    )
        .then((response) {
      print("=-=-=-=-= Reconcile Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Reconcile Failed =-=-=-=-=");
      print("error, $err");
      throw err;
    });
  }

  Future<dynamic> reverseAction(String uuid) async {
    print("=-=-=-=-= Start Reverse Action =-=-=-=-=");

    return nearpay
        .reverse(
      transactionUUID: uuid,
      enableReceiptUi: true,
      finishTimeout: 60,
    )
        .then((response) {
      print("=-=-=-=-= Reverse Success =-=-=-=-=");
      print("response $response");
      return response;
    }).catchError((err) {
      print("=-=-=-=-= Reverse Failed =-=-=-=-=");
      print("error, $err");
      throw err;
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
        body: Column(children: [
          TextButton(
            onPressed: () async {
              // Respond to button press
              purchaseAction();
            },
            child: const Text("Purchase"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              // Respond to button press
              purchaseWithRefund();
            },
            child: const Text("Purchase and Refund"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              // Respond to button press
              purchaseWithReverse();
            },
            child: const Text("Purchase and Reverse"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              // Respond to button press
              reconcileAction();
            },
            child: const Text("RECONCILE"),
          ),
          const SizedBox(
            height: 20,
          ),
          /*TextButton(
            onPressed: () async {
              // Respond to button press
              reverseAction();
            },
            child: const Text("REVERSE"),
          ),
          const SizedBox(
            height: 20,
          ),*/
          TextButton(
            onPressed: () async {
              // Respond to button press
              setupAction();
            },
            child: const Text("Setup"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              // Respond to button press
              logoutAction();
            },
            child: const Text("Logout"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () async {
              // Respond to button press
              sessionAction();
            },
            child: const Text("Session"),
          )
        ]),
      ),
    );
  }
}
