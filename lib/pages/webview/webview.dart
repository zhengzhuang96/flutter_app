import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

/* *
 * Webview
 */
class Webview extends StatefulWidget {
  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('webview'),
      ),
      body: WillPopScope(
        child: WebviewScaffold(
          url: 'https://www.baidu.com',
          // appBar: AppBar(
          //   iconTheme: IconThemeData(color: Colors.white),
          //   backgroundColor: Color.fromARGB(255, 41, 58, 144),
          //   title: Text(
          //     '百度',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
        ),
        onWillPop: _requestPop,
      ),
    );
  }

  Future<bool> _requestPop() {
    Navigator.of(context).pop(100);

    ///弹出页面并传回int值100，用于上一个界面的回调
    return new Future.value(false);
  }
}
