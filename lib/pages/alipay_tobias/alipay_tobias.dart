import 'package:flutter/material.dart';

/* *
 * 支付宝相关
 */
class AliPayTobias extends StatefulWidget {
  @override
  _AliPayTobiasState createState() => _AliPayTobiasState();
}

class _AliPayTobiasState extends State<AliPayTobias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('支付宝相关'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('支付宝支付'),
              onPressed: () {
                print('支付宝支付');
              },
            ),
          ],
        ),
      ),
    );
  }
}