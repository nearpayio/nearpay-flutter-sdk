import 'package:flutter/material.dart';
import 'package:flutter_nfc_compatibility/flutter_nfc_compatibility.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(child: NfcScan()),
      ),
    );
  }
}

class NfcScan extends StatefulWidget {
  NfcScan({Key? key}) : super(key: key);

  @override
  _NfcScanState createState() => _NfcScanState();
}

class _NfcScanState extends State<NfcScan> {
  TextEditingController writerController = TextEditingController();

  @override
  initState() {
    super.initState();

    writerController.text = 'Flutter NFC Check';
    checkAvailibility();
  }

  void checkAvailibility() async {
    var nfcCompatibility = await FlutterNfcCompatibility.checkNFCAvailability();
    if(nfcCompatibility ==NFCAvailability.Enabled ){
      writerController.text = "Enabled";
    }else if(nfcCompatibility == NFCAvailability.Disabled ){
      writerController.text = "Disabled";
    }else{
      writerController.text = "Not Supported";
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    writerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: writerController,
        ),
      ],
    );
  }
}
