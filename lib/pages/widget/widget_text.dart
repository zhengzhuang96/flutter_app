import 'package:flutter/material.dart';

/* *
 * Text Widget 文本组件的使用
 * 更详细的属性资料可以参看这个网址：https://docs.flutter.io/flutter/painting/TextStyle-class.html
 */
class WidgetText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Text'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Hello Widget, Hello Widget, Hello Widget, Hello Widget, Hello Widget, Hello Widget, Hello Widget, ',
            textAlign: TextAlign.left,
            maxLines: 1,    // 当前文字显示占用行数
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 150, 150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid
            ),
          ),
        ),
      ),
    );
  }
}
