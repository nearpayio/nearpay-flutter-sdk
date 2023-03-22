# Nearpay SDK Flutter Plugin For Android

Nearpay plugin for Android device payment using NFC. Plugin supported from
Minimum SDK version 26. This plugin will work based on
[Nearpay SDK](https://docs.nearpay.io/sdk/)

# Install plugin

```bash
flutter pub add nearpay_flutter_sdk --git-url=https://github.com/nearpayio/nearpay-flutter-sdk.git
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
 AuthenticationType.login.values // If you want user to decide what will use to login email or mobile
 AuthenticationType.email.values // if you want restrict only email and you need to provide it to the auth value
 AuthenticationType.mobile.values // if you want restrict only mobile and you need to provide it to the auth value
 AuthenticationType.jwt.values // if you want restrict only jwt and you need to provide it to the auth value
```

### loggedin user information

```dart
var authType = AuthenticationType.email.values
var authValue = "youremail@email.com"
```

# 2. Initialize SDK

```dart

var jsonResponse = await Nearpay.initialize(
    authType: authType, // [Required] Same as above reference
    authValue: authvalue, // [Required] Give auth type value
    env: Environments.sandbox, // [Required] environment reference
    locale: Locale.localeDefault // [Optional] locale reference
);

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
var purchaseReceipt = await Nearpay.purchase(
  amount: 0001, // [Required] ammount you want to set .
  customerReferenceNumber: "123", // [Optional] any number you want to add as a refrence Any string as a reference number
  enableReceiptUi: true, // [Optional] true will enable the ui and false will disable
  enableReversal: true, // [Optional] it will allow you to enable or disable the reverse button
  finishTimeout: 60 // [Optional] Add the number of seconds
);

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
var refundReceipt = await Nearpay.refund(
  amount: 0001,// [Required] ammount you want to set .
  transactionUUID: uuid,// [Required] add Transaction Reference Retrieval Number we need to pass from purchase response list contains uuid dict key "uuid",  pass that value here.
  customerReferenceNumber: "123",// [Optional] any number you want to add as a refrence Any string as a reference number
  enableReceiptUi: true, // [Optional] true will enable the ui and false will disable
  enableReversal: true,// [Optional] it will allow you to enable or disable the reverse button
  editableRefundUI: true,// [Optional] true will enable editing the refund amount by ui and false will disable
  finishTimeout: 60,//[Optional] Add the number of seconds
  adminPin: '0000',// Optional
);

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
var reconciliationReceipt = await Nearpay.reconcile(
  enableReceiptUi: true,//[Optional] true will enable the ui and false will disable
  finishTimeout: 60,// [Optional] Add the number of seconds
  adminPin: '0000',// Optional
);

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
var jsonResponse = await Nearpay.reverse(
  transactionUUID: uuid, //[Required] add Transaction Reference Retrieval Number we need to pass from purchase response list contains uuid dict key "uuid",  pass that value here.
  enableReceiptUi: true, //[Optional] true will enable the ui and false will disable
  finishTimeout: 60 // [Optional] Add the number of seconds
);

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
var jsonResponse = await Nearpay.session(
  sessionID: "ea5e30d4-54c7-4ad9-8372-f798259ff589", // Required
  enableReceiptUi: true, //Optional
  enableReversal: true, //Optional
  finishTimeout: 60, // Optional
) ;

    print("...setupAction response...------$jsonResponse.");
```

# 9. Logout

```dart
var jsonResponse = await Nearpay.logout();
var jsonData = json.decode(jsonResponse);
var status = jsonData['status'];
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
