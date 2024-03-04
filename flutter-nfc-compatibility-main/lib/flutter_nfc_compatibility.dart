import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/services.dart';


class FlutterNfcCompatibility {
  static const MethodChannel _channel =
      const MethodChannel('flutter_nfc_compatibility');
  static const stream =
      const EventChannel('com.mymax.nfccompatibility.flutter_nfc_compatibility');

  static Future<NFCAvailability> checkNFCAvailability() async {
    var availability =
        "NFCAvailability.${await _channel.invokeMethod<String>("NfcAvailable")}";
    return NFCAvailability.values
        .firstWhere((item) => item.toString() == availability);
  }
}

enum NFCAvailability { Enabled, Disabled, NotSupported }
