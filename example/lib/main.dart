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
  final nearpayPlugin = Nearpay();
  final tokenKey = "test+youremail@gmail.com";
  final authType = AuthenticationType.email.value;
  final timeout = 60;
  
  @override
  void initState() {
    super.initState();
    sdkInitialize();
  }

  sdkInitialize()  {
    var reqData = {
      "authtype" : authType,
      "authvalue" : tokenKey,
      "locale" : Locale.localeDefault.value,
      "environment" : Environments.sandbox.value
      };
    var jsonResponse = nearpayPlugin..initialize(reqData) ;
    
  }

  purchaseWithRefund() async {
    var reqData = {
      "amount": 0001, 
      "customer_reference_number": "", // Any string as a reference number
      "isEnableUI" : true, // Optional
      "isEnableReversal" : true, // Optional it will allow you to enable or disable the reverse button
      "finishTimeout" : timeout //Optional 
    };
    var jsonResponse = await nearpayPlugin.purchase(reqData);
    var jsonData = json.decode(jsonResponse);
    var status = jsonData['status'];
    var message = jsonData['message'];
    if(status == 200){

        List<dynamic> purchaseList = jsonData["list"];
        Future.delayed(const Duration(milliseconds: 5000), () {
        // Your code
          if(purchaseList.isNotEmpty){
            String udid = purchaseList[0]['udid'];
            refundAction(udid);
          }
          
        });
    }else if(status == 401){
      showToast(message, true);

    }
    else{
      showToast(message, true);

    }
    
  }

  purchaseWithReverse() async {
    var reqData = {
      "amount": 0001, // Required
      "customer_reference_number": "uuyuyuyuy65565675", // Optional
      "isEnableUI" : true, //Optional
      "isEnableReversal" : true, //it will allow you to enable or disable the reverse button
      "finishTimeout" : timeout //Optional
    };
    var jsonResponse = await nearpayPlugin.purchase(reqData);
    var jsonData = json.decode(jsonResponse);
    var status = jsonData['status'];
    var message = jsonData['message'];
    if(status == 200){
      List<dynamic> purchaseList = jsonData["list"];
      Future.delayed(const Duration(milliseconds: 5000), () {
      // Your code
        if(purchaseList.isNotEmpty){
          String udid = purchaseList[0]['udid'];
          reverseAction(udid);
        }
        
      });
    }else if(status == 401){
      showToast(message, true);

    }
    else{
      showToast(message, true);

    }

    
  }


  purchaseAction() async {
    var reqData = {
      "amount": 0001, // Required
      "customer_reference_number": "uuyuyuyuy65565675", // [optional] any number you want to add as a refrence
      "isEnableUI" : true, // [optional] true will enable the ui and false will disable 
      "isEnableReversal" : true, // it will allow you to enable or disable the reverse button
      "finishTimeout" : timeout // [optional] Add the number of seconds      
    };
    var jsonResponse = await nearpayPlugin.purchase(reqData);
    
  }

  refundAction(String uuid) async {
    var reqData = {
      "amount": 0001, // Required
      "transaction_uuid" :uuid, // Required
      "customer_reference_number": "rerretest123333333", //Optional
      "isEnableUI" : true, // Optional
      "isEnableReversal" : true,// Optional
      "isEditableReversalUI" : true,// Optional
      "finishTimeout" : timeout // Optional

    };
    var jsonResponse = await nearpayPlugin.refund(reqData) ;
    print("...refund response...------$jsonResponse.");
    
  }

  reconcileAction() async {
    var reqData = {
      "isEnableUI" : true,// Optional
      "finishTimeout" : timeout    // Optional
    };
    var jsonResponse = await nearpayPlugin.reconcile(reqData) ;
    print("...reconcileAction response...------$jsonResponse.");
    
  }

  reverseAction(String uuid) async {
    var reqData = {
      "transaction_uuid" :uuid, // Required
      "isEnableUI" : true, // Optional
      "finishTimeout" : timeout   // Optional
    };
    var jsonResponse = await nearpayPlugin.reverse(reqData) ;
    print("...reverseAction response...------$jsonResponse.");
    
  }

  logoutAction() async {
    var jsonResponse = await nearpayPlugin.logout() ;
    print("...logoutAction response...------$jsonResponse.");
    
  }

  setupAction(String tokenKey) async {
      var reqData = {
        "authtype" : authType, // [optional] Auth type we will pass here
        "authvalue" : tokenKey, // [optional] Auth value we will pass here
      };
    var jsonResponse = await nearpayPlugin.setup(reqData) ;
    print("...setupAction response...------$jsonResponse.");
  }

  showToast(String message, bool isError){
    print("..$isError....showtoast.....4.....$message....");
    Fluttertoast.showToast(
        msg:message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor:Colors.red ,
        textColor:  Colors.black,
        fontSize: 16.0
    );
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
              setupAction(tokenKey);
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
          )
        ]),
      ),
    );
  }
}


