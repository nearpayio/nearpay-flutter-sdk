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

# 1. Create plugin object

```dart
final nearpaySDK = Nearpay();
```

# 2. Authentications

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
var authValue = "name@email.com"
```

# 3. Initialize SDK

```dart
var reqData = {
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, // Give auth type value
      "locale" : Locale.localeDefault.value, // locale reference
      "environment" : Environments.sandbox.value // environment reference
      };
var jsonResponse = nearpaySDK.initialize(reqData);
```

# 4. Setup

```dart
var reqData = {
    "authtype" : authType, //Same as above reference
    "authvalue" : authValue // Give auth type value
};
var jsonResponse = await nearpaySDK.setup(reqData);
```

# 5. Purchase

```dart
var reqData = {
      "amount": 0001, // [Required] ammount you want to set . 
      "customer_reference_number": "uuid()", // [optional] any number you want to add as a refrence Any string as a reference number
      "isEnableUI" : true, // [optional] true will enable the ui and false will disable
      "isEnableReversal" : true, // it will allow you to enable or disable the reverse button
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, // Give auth type value
      "finishTimeout" : 2  //[optional] Add the number of seconds
    };

var purchaseReceipt = await nearpaySDK.purchase(reqData);
```

# 6. Refund

```dart
var reqData = {
      "amount": 0001, // [Required] ammount you want to set . 
      "transaction_uuid" :  purchaseReceipt.uuid,// [Required] add Transaction Reference Retrieval Number we need to pass from purchase response list contains uuid dict key "udid",  pass that value here.
      "customer_reference_number": "uuid()", // [optional] any number you want to add as a refrence Any string as a reference number
      "isEnableUI" : true,  // [optional] true will enable the ui and false will disable
      "isEnableReversal" : true, // it will allow you to enable or disable the reverse button
      "isEditableReversalUI" : true, // [optional] true will enable the ui and false will disable
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, // Give auth type value
      "finishTimeout" : 2,//[optional] Add the number of seconds
    };

var refundReceipt = await nearpaySDK.refund(reqData);
```

# 7. Reconcile

```dart
var reqData = {
      "isEnableUI" : true, //[optional] true will enable the ui and false will disable 
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, // Give auth type value
      "finishTimeout" : 2 // [optional] Add the number of seconds
    };

var reconciliationReceipt = await nearpaySDK.reconcile(reqData);
```

# 8. Reverse

```dart
var reqData = {
      "isEnableUI" : true, //[optional] true will enable the ui and false will disable 
      "transaction_uuid" :purchaseReceipt.uuid, //[Required] add Transaction Reference Retrieval Number we need to pass from purchase response list contains uuid dict key "udid",  pass that value here.
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, // Give auth type value
      "finishTimeout" : 2 // [optional] Add the number of seconds
    };

var reversalReceipt = await nearpaySDK.reverse(reqData);
```

# 9. Logout

```dart
await nearpaySDK.logout();
```

### Response Status

```
General Response

200 :  Success
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
