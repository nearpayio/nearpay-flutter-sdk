# Nearpay SDK Flutter Plugin For Android

Nearpay plugin for Android device payment using NFC. Plugin supported from
Minimum SDK version 26. This plugin will work based on
[Nearpay SDK](https://docs.nearpay.io/sdk/)

# Install plugin

If want to download the plugin from Google Play, use this code

```bash
flutter pub add nearpay_flutter_sdk --git-url=https://github.com/nearpayio/nearpay-flutter-sdk.git --git-ref=v1-google
```

If you want to download the plugin inside your app

```bash
flutter pub add nearpay_flutter_sdk --git-url=https://github.com/nearpayio/nearpay-flutter-sdk.git --git-ref=v1
```

Plugin will support minimum supported ANDROID SDK version 26 and above only.

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
 AuthenticationType.login // If you want user to decide what will use to login email or mobile
 AuthenticationType.email // if you want restrict only email and you need to provide it to the auth value
 AuthenticationType.mobile // if you want restrict only mobile and you need to provide it to the auth value
 AuthenticationType.jwt // if you want restrict only jwt and you need to provide it to the auth value
```

### loggedin user information

```dart
var authType = AuthenticationType.email
var authValue = "youremail@email.com"
```

# 2. Initialize SDK

the created `Nearpay` object should be preserved accross the application

```dart
final nearpay = Nearpay(
    authType: AuthenticationType.email,// [Required] Same as above reference
    authValue: "<your email here>",// [Required] Give auth type value
    env: Environments.sandbox,// [Required] environment reference
    locale: Locale.localeDefault, // [Optional] locale reference
  );

nearpay.initialize(onInitializeSuccess: () {
      print("nearpay initialized successfully");
    }, onInitializeFail: () {
      print("nearpay initialize failed");
    });
```

# 3. Setup (optional)

if you want to install the plugin immediatly after initializing then use the `setup` method

```dart

nearpay.setup()

```

# 4. Purchase

```dart
final transactionData = await nearpay.purchase(
  amount: 0001,// [Required] ammount you want to set .
  transactionUUID: uuid.v4(), // [Optional] specefy the transaction uuid for later referance
  customerReferenceNumber: '123',// [Optional] any number you want to add as a refrence Any string as a reference number
  enableReceiptUi: true, // [Optional] show the reciept in ui
  enableReversalUi: true, // [Optional] it will allow you to enable or disable the reverse button
  enableUiDismiss: true, // [Optional] the ui is dimissible
  finishTimeout: 60, // [Optional] finish timeout in seconds
);
```

# 5. Refund

```dart
final transactionData = await nearpay.refund(
  amount: 1000, // [Required], means 10.00
  originalTransactionUUID: "f5079b9d-b61c-4180-8a4d-9780f7a9cd8f", // [Required] the orginal trnasaction uuid that you want to refund
  transactionUUID: uuidv4(), //[Optional] speacify the transaction uuid
  customerReferenceNumber: '', //[Optional]
  enableReceiptUi: true, // [Optional] show the reciept in ui
  enableReversalUi: true, //[Optional] enable reversal of transaction from ui
  editableRefundUI: true, // [Optional] edit the reversal amount from uid
  enableUiDismiss: true, //[Optional] the ui is dimissible
  finishTimeout: 60, //[Optional] finish timeout in seconds
  adminPin: '0000', // [Optional] when you add the admin pin here , the UI for admin pin won't be shown.
);
```

# 6. Reverse

```dart
final transactionData = await nearpay.reverse(
  originalTransactionUUID: "2ddbbd15-a97e-4949-b5c2-fa073ab750eb", // [Required] the orginal trnasaction uuid that you want to reverse
  enableReceiptUi: true, // [Optional] show the reciept in ui
  enableUiDismiss: true, //[Optional] the ui is dimissible
  finishTimeout: 60, //[Optional] finish timeout in seconds
);
```

# 7. Reconcile

```dart
final receipt = await nearpay.reconcile(
  enableReceiptUi: true, // [Optional] show the reciept in ui
  enableUiDismiss: true, //[Optional] the ui is dimissible
  finishTimeout: 60, //[Optional] finish timeout in seconds
  adminPin: '0000', // [optional] when you add the admin pin here , the UI for admin pin won't be shown.

);
```

# 8. Session

```dart
nearpay.session(
  sessionID: 'ea5e30d4-54c7-4ad9-8372-f798259ff589', // Required
  enableReceiptUi: true, // [Optional] show the reciept in ui
  enableReversalUi: true, //[Optional] enable reversal of transaction from ui
  enableUiDismiss: true, //[Optional] the ui is dimissible
  finishTimeout: 60, //[Optional] finish timeout in seconds
  onSessionClosed: (session) {  // [Optional] callback on session closed
  },
  onSessionOpen: (receipt) { // [Optional] callback on session open
  },
);
```

# 9. Logout

```dart
nearpay.logout();
```

# 10. getTransaction

gets a transaction by uuid

```dart
final transaction = await nearpay.getTransaction(
  transactionUUID: "a2fd6519-2b37-4336-be6d-5520bb3b6427",
);

```

# 11. getTransactions

gets transactions list

```dart
final banner = await nearpay.getTransactionsList(
  page: 1,
  limit: 30,
);
```

# 12. getReconciliation

gets a reaconciliation by uuid

```dart
final receipt = await nearpay.getReconciliation(
  reconciliationUUID: "6d4a48b8-d194-4aad-92c9-a77606758799",
);
```

# 13. getReconciliations

get reaconciliations

```dart
final banner = await nearpay.getReconciliationsList(
  page: 1,
  limit: 30,
);
```

## Nearpay plugin response will be be in below formats

[Model Response](https://docs.nearpay.io/sdk/sdk-models)
