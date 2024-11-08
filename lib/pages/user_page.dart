/*
 * @Author: {zhengzhuang}
 * @Date: 2024-11-08 15:44:31
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2024-11-08 15:49:56
 * @Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes/navigator_util.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('远度云flutter-模版2222')),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            _buildMaterialButton('计数器 - 加入了状态管理', () {
              NavigatorUtil.jump('/counters');
            }),
            const SizedBox(height: 10.0),
            _buildMaterialButton('屏幕适配方案', () {
              NavigatorUtil.jump('/screenutil');
            }),
            const SizedBox(height: 10.0),
            _buildMaterialButton('Loading', () {
              NavigatorUtil.jump('/loading');
            }),
            const SizedBox(height: 10.0),
            _buildMaterialButton('android&ios升级方案', () {
              NavigatorUtil.jump('/update');
            }),
          ],
        ),
      ),
    );
  }

  // 按钮组件
  Widget _buildMaterialButton(String text, VoidCallback onPressed) {
    return MaterialButton(
      minWidth: ScreenUtil().setWidth(500),
      height: ScreenUtil().setHeight(80),
      color: Colors.blueAccent,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: ScreenUtil().setSp(30)),
      ),
    );
  }
}
