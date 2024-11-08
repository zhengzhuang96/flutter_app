/*
 * @Author: {zhengzhuang}
 * @Date: 2024-11-08 15:44:16
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2024-11-08 16:00:44
 * @Description:
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routes/navigator_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter_App')),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          shrinkWrap: true,
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
