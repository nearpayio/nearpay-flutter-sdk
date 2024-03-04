# Flutter NFC Compatibility Check

## Installation

Add to pubspec.yaml:

```yaml
dependencies:
  flutter_nfc_compatibility: ^0.0.1
```


```dart
import 'package:flutter_nfc_compatibility/flutter_nfc_compatibility.dart';
```

## How to use

### Android setup

Add those two lines to your `AndroidManifest.xml` on the top

```xml
<uses-permission android:name="android.permission.NFC" />
<uses-feature
        android:name="android.hardware.nfc"
        android:required="true" />
```


