// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  final nearpay = Nearpay();
  final tokenKey = "a.khalifa@nearpay.io";
  final authType = AuthenticationType.email.value;
  final timeout = 60;

  @override
  void initState() {
    super.initState();
    sdkInitialize();
  }

  sdkInitialize() async {
    var reqData = {
      "authtype": authType,
      "authvalue": tokenKey,
      "locale": Locale.localeDefault.value,
      "environment": Environments.sandbox.value
    };
    var jsonResponse = await Nearpay.initialize(reqData);
    print("...sdkInitialize....$jsonResponse....");
    return jsonResponse;
  }

  purchaseWithRefund() async {
    var reqData = {
      "amount": 0001,
      "customer_reference_number": "", // Any string as a reference number
      "isEnableUI": true, // Optional
      "isEnableReversal":
          true, // Optional it will allow you to enable or disable the reverse button
      "finishTimeout": timeout //Optional
    };
    var jsonResponse = await Nearpay.purchase(reqData);
    var jsonData = json.decode(jsonResponse);
    var status = jsonData['status'];
    var message = jsonData['message'];
    if (status == 200) {
      List<dynamic> purchaseList = jsonData["list"];
      Future.delayed(const Duration(milliseconds: 5000), () {
        // Your code
        if (purchaseList.isNotEmpty) {
          String udid = purchaseList[0]['udid'];
          refundAction(udid);
        }
      });
    } else if (status == 401) {
      showToast(message, true);
    } else {
      showToast(message, true);
    }
  }

  purchaseWithReverse() async {
    var reqData = {
      "amount": 0001, // Required
      "customer_reference_number": "uuyuyuyuy65565675", // Optional
      "isEnableUI": true, //Optional
      "isEnableReversal":
          true, //it will allow you to enable or disable the reverse button
      "finishTimeout": timeout //Optional
    };
    var jsonResponse = await Nearpay.purchase(reqData);
    var jsonData = json.decode(jsonResponse);
    var status = jsonData['status'];
    var message = jsonData['message'];
    if (status == 200) {
      List<dynamic> purchaseList = jsonData["list"];
      Future.delayed(const Duration(milliseconds: 5000), () {
        // Your code
        if (purchaseList.isNotEmpty) {
          String udid = purchaseList[0]['udid'];
          reverseAction(udid);
        }
      });
    } else if (status == 401) {
      showToast(message, true);
    } else {
      showToast(message, true);
    }
  }

  purchaseAction() async {
    var reqData = {
      "amount": 0001, // [Required] ammount you want to set .
      "customer_reference_number":
          "uuid()", // [optional] any number you want to add as a refrence Any string as a reference number
      "isEnableUI":
          true, // [optional] true will enable the ui and false will disable
      "isEnableReversal":
          true, // it will allow you to enable or disable the reverse button
      "finishTimeout": 2, //[optional] Add the number of seconds
      "isUiDismissible":
          true, //[optional] allow the transaction to be dismissed from ui
      // "transactionId":
      //     "740dc2a9-125a-4ee4-8739-13670b3cd5cd", // [optional] uuid for referancing transaction
    };
    var jsonResponse = jsonDecode(await Nearpay.purchase(reqData));
    print('=-=-=-=-=-=-=-=-=-=-=-=-=-= $jsonResponse');
    // print('response ${jsonResponse['list'][0]['udid']}');
  }

  refundAction(String uuid) async {
    var reqData = {
      "amount": 0001, // Required
      "transaction_uuid": uuid, // Required
      "customer_reference_number": "rerretest123333333", //Optional
      "isEnableUI": true, // Optional
      "isEnableReversal": true, // Optional
      "isEditableReversalUI": true, // Optional
      "finishTimeout": timeout, // Optional
      //"adminPin" : "0000", // Optional
    };
    var jsonResponse = await Nearpay.refund(reqData);
    print("...refund response...------$jsonResponse.");
  }

  reconcileAction() async {
    var reqData = {
      "isEnableUI": true, // Optional
      "finishTimeout": timeout, // Optional
      //"adminPin" : "0000" // Optional
    };
    var jsonResponse = await Nearpay.reconcile(reqData);
    print("...reconcileAction response...------$jsonResponse.");
  }

  reverseAction(String uuid) async {
    var reqData = {
      "transaction_uuid": uuid, // Required
      "isEnableUI": true, // Optional
      "finishTimeout": timeout // Optional
    };
    var jsonResponse = await Nearpay.reverse(reqData);
    print("...reverseAction response...------$jsonResponse.");
  }

  logoutAction() async {
    var jsonResponse = await Nearpay.logout();
    print("...logoutAction response...------$jsonResponse.");
  }

  setupAction() async {
    var jsonResponse = await Nearpay.setup();
    print("...setupAction response...------$jsonResponse.");
  }

  sessionAction() async {
    var reqData = {
      "sessionID": "ea5e30d4-54c7-4ad9-8372-f798259ff589", // Required
      //"isEnableUI" : true, //Optional
      //"isEnableReversal" : true,
      //"finishTimeout" : timeout  // Optional
    };
    var jsonResponse = await Nearpay.session(reqData);
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

  updateAuthentication({
    required AuthenticationType authType,
    required String authValue,
  }) async {
    var reqData = {
      "authType": authType.value,
      "authValue": authValue,
    };
    var jsonResponse = await Nearpay.updateAuthentication(reqData);
    print("...updateAuth response...------$jsonResponse.");
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
          ),
          TextButton(
            onPressed: () async {
              DateTime from = DateTime.utc(2023, 0, 0);
              DateTime to = DateTime.now();

              var jsonResponse = await Nearpay.getTransactionsList(
                page: 1,
                limit: 30,
                from: from,
                to: to,
                isReconciled: true,
              );
              print(
                  "=-=-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-===-=-=-=");
              print(jsonResponse);
            },
            child: const Text("get transaction list"),
          ),
          TextButton(
            onPressed: () async {
              final response = await Nearpay.getTransaction(
                transactionUuid: "a2fd6519-2b37-4336-be6d-5520bb3b6427",
              );
              print("=-=-=--==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
              print(response);
            },
            child: const Text("get transaction by uuid"),
          ),
          TextButton(
            onPressed: () async {
              DateTime from = DateTime.utc(2023, 0, 0);
              DateTime to = DateTime.now();
              final response = await Nearpay.getReconciliationsList(
                page: 1,
                limit: 30,
                from: from,
                to: to,
              );
              print("=-=-=--==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
              print(response);
            },
            child: const Text("get reconciliation list"),
          ),
          TextButton(
            onPressed: () async {
              final response = await Nearpay.getReconciliation(
                reconciliationUuid: "6d4a48b8-d194-4aad-92c9-a77606758799",
              );
              print("=-=-=--==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=");
              print(response);
            },
            child: const Text("get reconciliation by uuid"),
          ),
        ]),
      ),
    );
  }
}
