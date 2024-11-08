/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-09 16:08:39
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-09 16:13:19
 * @Description: app升级方案
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app升级方案'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10.0),
            const Text(
              'app升级方案',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              '请联系：zhengzhuang@yuanduyun.com',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
