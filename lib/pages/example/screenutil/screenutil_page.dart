/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-09 15:54:23
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2024-12-31 10:52:03
 * @Description: 屏幕适配demo
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenutilPage extends StatelessWidget {
  const ScreenutilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('屏幕适配')),
      body: Column(
        children: [
          Container(
            width: ScreenUtil().setWidth(750),
            height: ScreenUtil().setHeight(100),
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              '750 * 100',
              style: TextStyle(fontSize: ScreenUtil().setSp(30)),
            ),
          ),
          Row(
            children: [
              Container(
                width: ScreenUtil().setWidth(375),
                height: ScreenUtil().setHeight(100),
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(
                  '375 * 100',
                  style: TextStyle(fontSize: ScreenUtil().setSp(30)),
                ),
              ),
              Container(
                width: ScreenUtil().setWidth(375),
                height: ScreenUtil().setHeight(100),
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  '375 * 100',
                  style: TextStyle(fontSize: ScreenUtil().setSp(30)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
