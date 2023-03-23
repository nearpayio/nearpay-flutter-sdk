// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nearpay_flutter_sdk/nearpay.dart';

void main() {
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

  final authvalue = "f.alhajeri@nearpay.io";
  final authType = AuthenticationType.email;
  final timeout = 60;
  final List<dynamic> responsesList = [];

  @override
  void initState() {
    super.initState();
    // sdkInitialize();
  }

  addResponse(dynamic response) {
    setState(() {
      responsesList.add(response);
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

  purchaseWithRefund() async {
    var jsonResponse = await nearpay.purchase(
      amount: 0001,
      customerReferenceNumber: "123", // optional
      enableReceiptUi: true, // optional
      enableReversal: true, // optional
      finishTimeout: 60, // optional
    );

    var jsonData = json.decode(jsonResponse);
    var status = jsonData['status'];
    var message = jsonData['message'];

    if (status == 200) {
      List<dynamic> purchaseList = jsonData["list"];

      Future.delayed(const Duration(milliseconds: 5000), () {
        // Your code
        if (purchaseList.isNotEmpty) {
          String uuid = purchaseList[0]['uuid'];
          refundAction(uuid);
        }
      });
    } else if (status == 401) {
      showToast(message, true);
    } else {
      showToast(message, true);
    }
  }

  purchaseWithReverse() async {
    var jsonResponse = await nearpay.purchase(
      amount: 0001,
      enableReceiptUi: true,
    );

    var jsonData = json.decode(jsonResponse);
    var status = jsonData['status'];
    var message = jsonData['message'];
    if (status == 200) {
      List<dynamic> purchaseList = jsonData["list"];
      Future.delayed(const Duration(milliseconds: 5000), () {
        // Your code
        if (purchaseList.isNotEmpty) {
          String uuid = purchaseList[0]['uuid'];
          reverseAction(uuid);
        }
      });
    } else if (status == 401) {
      showToast(message, true);
    } else {
      showToast(message, true);
    }
  }

  Future<dynamic> purchaseAction() async {
    return nearpay
        .purchase(amount: 0001, enableReceiptUi: true)
        .then((response) {
      print("response $response");
      return response;
    }).catchError((err) {
      print("err, $err");
    });
  }

  refundAction(String uuid) async {
    var jsonResponse = await nearpay.refund(
      amount: 0001,
      transactionUUID: uuid,
      customerReferenceNumber: "123",
      adminPin: '0000',
      editableRefundUI: true,
      enableReceiptUi: true,
      enableReversal: true,
      finishTimeout: 60,
    );

    print("...refund response...------$jsonResponse.");
  }

  reconcileAction() async {
    var jsonResponse = await nearpay.reconcile(
      enableReceiptUi: true,
      adminPin: '0000',
      finishTimeout: 60,
    );

    print("...reconcileAction response...------$jsonResponse.");
  }

  reverseAction(String uuid) async {
    var jsonResponse = await nearpay.reverse(
      transactionUUID: uuid,
      enableReceiptUi: true,
      finishTimeout: 60,
    );

    print("...reverseAction response...------$jsonResponse.");
  }

  logoutAction() async {
    var jsonResponse = await nearpay.logout();

    print("...logoutAction response...------$jsonResponse.");
  }

  setupAction() async {
    var jsonResponse = await nearpay.setup();

    print("...setupAction response...------$jsonResponse.");
  }

  sessionAction() async {
    var jsonResponse = await nearpay.session(
      sessionID: "ea5e30d4-54c7-4ad9-8372-f798259ff589",
      enableReceiptUi: true,
      enableReversal: true,
      finishTimeout: 60,
    );

    print("...sessionAction response...------$jsonResponse.");
  }

  showToast(String message, bool isError) {
    print("..$isError....showtoast.....4.....$message....");
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
