import 'package:flutter/material.dart';

/* *
 * Container容器组件
 * Container（容器控件）在Flutter是经常使用的控件，它就相当于我们HTML里的<div>标签，每个页面或者说每个视图都离不开它。
 */
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Container'),
      ),
      body: Center(
        child: Container(
          child: new Text(
            'Hello Container',
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          alignment: Alignment.bottomLeft,
          width: 500.0,
          height: 400.0,
          // color与decoration冲突
          // color: Colors.lightBlue,
          padding: const EdgeInsets.fromLTRB(
              30.0, 100.0, 36.0, 20.0), // left, top, right, bottom
          margin: const EdgeInsets.all(30.0), // 同上
          // decoration是 container 的修饰器，主要的功能是设置背景和边框。
          decoration: new BoxDecoration(
              // BoxDecoration类：给背景加入一个渐变
              gradient: const LinearGradient(colors: [
            Colors.lightBlue,
            Colors.greenAccent,
            Colors.purple
          ])),
        ),
      ),
    );
  }
}
