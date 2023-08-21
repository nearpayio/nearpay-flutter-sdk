# Nearpay SDK Flutter Plugin For Android

Nearpay plugin for Android device payment using NFC. Plugin supported from
Minimum SDK version 26. This plugin will work based on
[Nearpay SDK](https://docs.nearpay.io/sdk/)

# Install plugin

```bash
flutter pub add nearpay_flutter_sdk --git-url=https://github.com/nearpayio/nearpay-flutter-sdk.git
```

for google store version use the following command to install:

```bash
flutter pub add nearpay_flutter_sdk --git-url=https://github.com/nearpayio/nearpay-flutter-sdk.git --git-ref=google
```

Please integrate plugin to a flutter project either url or project, that will
share later.

```
Plugin will support minimum supported ANDROID SDK version 26 and above only.
```

# Usage

```dart
import 'package:nearpay_flutter_sdk/nearpay.dart';
```

# 1 Authentications

Authentication Types

- Login ( support both Email or Mobile user will chose )
- Email
- Mobile
- JWT

```dart
 AuthenticationType.login.value // If you want user to decide what will use to login email or mobile
 AuthenticationType.email.value // if you want restrict only email and you need to provide it to the auth value
 AuthenticationType.mobile.value // if you want restrict only mobile and you need to provide it to the auth value
 AuthenticationType.jwt.value // if you want restrict only jwt and you need to provide it to the auth value
```

### loggedin user information

```dart
var authType = AuthenticationType.email.values
var authValue = "youremail@email.com"
```

# 2. Initialize SDK

```dart
var reqData = {
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, // Give auth type value
      "locale" : Locale.localeDefault.value, // [optional] locale reference
      "environment" : Environments.sandbox.value // [Required] environment reference
      };
var jsonResponse = await Nearpay.initialize(reqData);
var jsonData = json.decode(jsonResponse);
var status = jsonData['status'];

if(status == 200){
  // Initialize Success with 200

}else if(status == 204){
  // Initialize Failed with 204, Plugin iniyialize failed with null
}else if(status == 400){
  // Missing parameter Failed with 400, Authentication paramer missing Auth Type and Auth Value
  // Auth type and Auth value missing
}

```

# 3. Setup

```dart

var jsonResponse = await Nearpay.setup();
var jsonData = json.decode(jsonResponse);
var status = jsonData['status'];

if(status == 200){
  // Initialize Success with 200
}else if(status == 204){
  // Initialize Failed with 204, Plugin iniyialize failed with null
}else if(status == 400){
  // Missing parameter Failed with 400, Authentication paramer missing Auth Type and Auth Value
  // Auth type and Auth value missing
}

```

# 4. Purchase

```dart
var reqData = {
      "amount": 0001, // [Required] ammount you want to set .
      "customer_reference_number": "uuid()", // [optional] any number you want to add as a refrence Any string as a reference number
      "isEnableUI" : true, // [optional] true will enable the ui and false will disable
      "isEnableReversal" : true, // it will allow you to enable or disable the reverse button
      "finishTimeout" : 2,  //[optional] Add the number of seconds
      "transactionId":
         "740dc2a9-125a-4ee4-8739-13670b3cd5cd", // [optional] uuid for referancing transaction

    };

var purchaseReceipt = await Nearpay.purchase(reqData);
var jsonData = json.decode(purchaseReceipt);
var status = jsonData['status'];

if(status == 200){
  // Initialize Success with 200
}else if(status == 204){
  // Initialize Failed with 204, Plugin iniyialize failed with null
}else if(status == 400){
  // Missing parameter Failed with 400, Authentication paramer missing Auth Type and Auth Value
  // Auth type and Auth value missing
  //Amount parameter null
}
```

# 5. Refund

```dart
var reqData = {
      "amount": 0001, // [Required] ammount you want to set .
      "transaction_uuid" :  purchaseReceipt.uuid,// [Required] add Transaction Reference Retrieval Number we need to pass from purchase response list contains uuid dict key "udid",  pass that value here.
      "customer_reference_number": "uuid()", // [optional] any number you want to add as a refrence Any string as a reference number
      "isEnableUI" : true,  // [optional] true will enable the ui and false will disable
      "isEnableReversal" : true, // it will allow you to enable or disable the reverse button
      "isEditableReversalUI" : true, // [optional] true will enable the ui and false will disable
      "finishTimeout" : 2,//[optional] Add the number of seconds
      "adminPin" : "0000", // Optional
      "transactionId":
         "740dc2a9-125a-4ee4-8739-13670b3cd5cd", // [optional] uuid for referancing transaction

    };

var refundReceipt = await Nearpay.refund(reqData);
var jsonData = json.decode(refundReceipt);
var status = jsonData['status'];

if(status == 200){
  // Initialize Success with 200
}else if(status == 204){
  // Initialize Failed with 204, Plugin iniyialize failed with null
}else if(status == 400){
  // Missing parameter Failed with 400, Authentication paramer missing Auth Type and Auth Value
  // Auth type and Auth value missing
  // Amount parameter null
  // Transaction UUID null
}
```

# 6. Reconcile

```dart
var reqData = {
      "isEnableUI" : true, //[optional] true will enable the ui and false will disable
      "finishTimeout" : 2, // [optional] Add the number of seconds
      "adminPin" : "0000" // Optional
    };

var reconciliationReceipt = await Nearpay.reconcile(reqData);
var jsonData = json.decode(reconciliationReceipt);
var status = jsonData['status'];

if(status == 200){
  // Initialize Success with 200
}else if(status == 204){
  // Initialize Failed with 204, Plugin iniyialize failed with null
}
```

# 7. Reverse

```dart
var reqData = {
      "isEnableUI" : true, //[optional] true will enable the ui and false will disable
      "transaction_uuid" :purchaseReceipt.uuid, //[Required] add Transaction Reference Retrieval Number we need to pass from purchase response list contains uuid dict key "udid",  pass that value here.
      "finishTimeout" : 2 // [optional] Add the number of seconds
    };

var jsonResponse = await Nearpay.reverse(reqData);
var jsonData = json.decode(jsonResponse);
var status = jsonData['status'];

if(status == 200){
  // Initialize Success with 200
}else if(status == 204){
  // Initialize Failed with 204, Plugin iniyialize failed with null
}else if(status == 400){
  // Missing parameter Failed with 400, Authentication paramer missing Auth Type and Auth Value
  // Auth type and Auth value missing
  // Transaction UUID null
}
```

# 8. Session

```dart
    var reqData = {
      "sessionID" :"ea5e30d4-54c7-4ad9-8372-f798259ff589", // Required
      "isEnableUI" : true, //Optional
      "isEnableReversal" : true,
      "finishTimeout" : timeout  // Optional
    };
    var jsonResponse = await Nearpay.session(reqData) ;
    print("...setupAction response...------$jsonResponse.");
```

# 9. Logout

```dart
var jsonResponse = await Nearpay.logout();
var jsonData = json.decode(jsonResponse);
var status = jsonData['status'];
```

# 10. getTransaction

gets a transaction by uuid

```dart
final response = await Nearpay.getTransaction(
  transactionUuid: "a2fd6519-2b37-4336-be6d-5520bb3b6427", // [Required] transaction uuid to fetch
);
print(response);
```

# 11. getTransactions

gets transactions list

```dart
var response = await Nearpay.getTransactionsList(
  page: 1, // [Optopnal] page number , default (1)
  limit: 30, // [Optopnal] page size, default (30)
  from: DateTime.utc(2023, 0, 0)  // start date of transaction
  to: DateTime.now()  // end date of transaction
);
print(response);
```

# 12. getReconciliation

gets a reaconciliation by uuid

```dart
final response = await Nearpay.getReconciliation(
  reconciliationUuid: "6d4a48b8-d194-4aad-92c9-a77606758799",  // [Required] reconciliation uuid to fetch
);
print(response);
```

# 13. getReconciliations

get reaconciliations

```dart
final response = await Nearpay.getReconciliationsList(
  page: 1, // [Optopnal] page number , default (1)
  limit: 30, // [Optopnal] page size, default (30)
  from: DateTime.utc(2023, 0, 0)  // start date of reconciliation
  to: DateTime.now()  // end date of reconciliation
);
print(response);
```

### Response Status

```
General Response

200 :  Success
204 : Initiase Missing
400 : Invalid arguments
401 :  Authentication
402:  General Failure
403:  Failure Message
404: Invalid Status

Purchase Response

405:  Purchase Declined
406 : Purchase Rejected

Refund Response

407 : Refund Declined
408: Refund Rejected

Logout Response

409: User Already logout

Setup Response

410:  Already Installed
411 :  Not Installed

```

## Nearpay plugin response will be be in below formats

[Model Response](https://docs.nearpay.io/sdk/sdk-models)
