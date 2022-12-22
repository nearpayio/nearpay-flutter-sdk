# Nearpay SDK Flutter Plugin For Android

Nearpay plugin for Android device payment using NFC. Plugin supported from
Minimum SDK version 26. This plugin will work based on
[Nearpay SDK](https://docs.nearpay.io/sdk/)

# Install plugin

```bash
flutter pub add
```

Please integrate plugin to a flutter project either url or project, that will
share later.

```
Plugin will support minimum supported ANDROID SDK version 26 and above only.
```

# Usage

```dart
import 'package:nearpay/nearpay.dart';
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

Example as JWT

```dart
var authType = AuthenticationType.jwt.value
var authValue = "a89sd0fu9aiosudfhjkna"
```

Language use the Locale parameter

```dart
"locale" : Locale.localeDefault.value,
```

Environment should be either Production Or Sandbox mode

```dart
"environment" : Environments.sandbox.value
"environment" : Environments.production.value
```

# 3. Initialize SDK

```dart
var reqData = {
      "authtype" : AuthenticationType.jwt.value,
      "authvalue" : authValue,
      "locale" : Locale.localeDefault.value,
      "environment" : Environments.sandbox.value
      };
var jsonResponse = nearpaySDK.initialize(reqData);
```

# 4. Setup

```dart
var reqData = {
    "authtype" : authType, //Same as above reference
    "authvalue" : authValue //Only for JWT token
};
var jsonResponse = await nearpaySDK.setup(reqData);
```

# 5. Purchase

```dart
var reqData = {
      "amount": 0001,
      "customer_reference_number": "uuid()", // Any string as a reference number
      "isEnableUI" : true, //true will enable the ui and false will disable
      "isEnableReversal" : true, //it will allow you to enable or disable the reverse button
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, //Only for JWT token
      "finishTimeout" : 2  //Add the number of seconds
    };

var jsonResponse = await nearpaySDK.purchase(reqData);
```

# 6. Refund

```dart
var reqData = {
      "amount": 0001,
      "transaction_udid" :uuid, //add Transaction Reference Retrieval Number UUID
      "customer_reference_number": "uuid()", // Any string as a reference number
      "isEnableUI" : true, //true will enable the ui and false will disable
      "isEnableReversal" : true, //it will allow you to enable or disable the reverse button
      "isEditableReversalUI" : true, // true will enable the ui and false will disable
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, //Only for JWT token
      "finishTimeout" : 2,//Add the number of seconds
      "transaction_udid" :  // we need to pass from purchase response list contains uuid dict key "udid",  pass that value here.
    };

var jsonResponse = await nearpaySDK.refund(reqData);
```

# 7. Reconcile

```dart
var reqData = {
      "isEnableUI" : true, //true will enable the ui and false will disable
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, //Only for JWT token
      "finishTimeout" : 2 //Add the number of seconds
    };

var jsonResponse = await nearpaySDK.reconcile(reqData);
```

# 8. Reverse

```dart
var reqData = {
      "isEnableUI" : true, //true will enable the ui and false will disable
      "transaction_udid" :uuid, //add Transaction Reference Retrieval Number
      "authtype" : authType, //Same as above reference
      "authvalue" : authValue, //Only for JWT token
      "finishTimeout" : 2, //Add the number of seconds
      "transaction_udid" :  //we need to pass from purchase response list contains uuid dict key "udid",  pass that value here.
    };

var jsonResponse = await nearpaySDK.reverse(reqData);
```

# 9. Logout

```dart
var jsonResponse = await nearpaySDK.logout();
```

## Nearpay plugin response will be be in below formats

[Model Response](https://docs.nearpay.io/sdk/sdk-models)
