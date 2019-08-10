import 'package:flutter/material.dart';
import 'package:flutter_app/routers/NavigatorUtil.dart';

/* *
 * flutter_easyrefresh 
 */
class FlutterEasyrefresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBar'),
      ),
      body: ListView(
        children: <Widget>[
          MaterialButton(
            child: Text('basic_page'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              NavigatorUtil.jump(context, '/basicPage');
            },
          ),
          // 金色校园样式
          MaterialButton(
            child: Text('金色校园样式'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              NavigatorUtil.jump(context, '/phoenixPage');
            },
          ),
          // 个人中心页面
          MaterialButton(
            child: Text('个人中心页面'),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: () {
              NavigatorUtil.jump(context, '/userProfilePage');
            },
          )
        ],
      ),
    );
  }
}
