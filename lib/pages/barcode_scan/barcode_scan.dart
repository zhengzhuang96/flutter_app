import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:barcode_scan/barcode_scan.dart';

/* *
 * 扫描二维码
 */
class BarcodeScan extends StatefulWidget {
  @override
  _BarcodeScanState createState() => _BarcodeScanState();
}

class _BarcodeScanState extends State<BarcodeScan> {

  String barcode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('二维码识别'),
      ),
      body: MaterialButton(
        child: Text('二维码识别'),
        onPressed: () {
          // scan();
        },
      ),
    );
  }

  // Future scan() async {
  //   try {
  //     String barcode = await BarcodeScanner.scan();
  //     setState(() => this.barcode = barcode);
  //     print('object');
  //     print(barcode);
  //   } on PlatformException catch (e) {
  //     if (e.code == BarcodeScanner.CameraAccessDenied) {
  //       setState(() {
  //         this.barcode = 'The user did not grant the camera permission!';
  //       });
  //     } else {
  //       setState(() => this.barcode = 'Unknown error: $e');
  //     }
  //   } on FormatException {
  //     setState(() => this.barcode =
  //         'null (User returned using the "back"-button before scanning anything. Result)');
  //   } catch (e) {
  //     setState(() => this.barcode = 'Unknown error: $e');
  //   }
  // }
}
