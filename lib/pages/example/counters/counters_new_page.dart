/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-02 16:48:40
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2024-12-31 10:52:02
 * @Description: In User Settings Edit
 */
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/navigator_util.dart';
import '../../../store/getx_counter.dart';

class CountersNewPage extends StatelessWidget {
  CountersNewPage({super.key});

  final logic = Get.put(GetxCounter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('远度云flutter-模版')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('你尝试按一下按钮更改一下数字:'),
            GetBuilder<GetxCounter>(
              builder: ((state) {
                return Text(
                  '点击了 ${state.count} 次',
                  style: const TextStyle(fontSize: 30.0),
                );
              }),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  minWidth: 100,
                  height: 50,
                  color: Colors.blue,
                  onPressed: () => logic.increase(),
                  child: const Text(
                    '+',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                const SizedBox(width: 20),
                MaterialButton(
                  minWidth: 100,
                  height: 50,
                  color: Colors.blue,
                  onPressed: () => logic.decrease(),
                  child: const Text(
                    '-',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            MaterialButton(
              minWidth: 100,
              height: 50,
              color: Colors.blue,
              onPressed: () => NavigatorUtil.goBack(),
              child: const Text(
                '返回上一页',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
