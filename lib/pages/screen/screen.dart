import 'package:flutter/material.dart';
import 'package:screen/screen.dart';

/* *
 * 屏幕常亮
 */
class ScreenPage extends StatefulWidget {
  @override
  _ScreenPageState createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  @override
  Widget build(BuildContext context) {
    Screen.keepOn(true);
    _getScreen();
    return Scaffold(
      appBar: AppBar(
        title: Text('屏幕常亮'),
      ),
      body: Text('屏幕常亮'),
    );
  }

  @override
  void dispose() {
    Screen.keepOn(false);
    super.dispose();
  }

  Future _getScreen() async {
    bool isKeptOn = await Screen.isKeptOn;
    print('获取屏幕当前状态');
    print(isKeptOn);
  }
}