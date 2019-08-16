import 'package:flutter/material.dart';

/* *
 * formDemo
 */
class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          // color: Theme.of(context).accentColor,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();  // 创建监听方法controller

  @override
  void dispose() {
    textEditingController.dispose();  // 关闭监听
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // textEditingController.text = 'hi';

    // 监听文本框变化
    textEditingController.addListener(() {
      debugPrint('input: ${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      // onChanged: (value) {
      //   debugPrint('input: $value');
      // },    // 输入时输出
      onSubmitted: (value) {
        debugPrint('submit: $value');
      },    // 点击键盘确认键输出
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',     // input顶部标题文字
        hintText: 'Enter the post title.',  // input边框默认提示文字
        // border: InputBorder.none,   // 去掉input边框下划线
        // border: OutlineInputBorder(),   // 增加一圈input边框下划线
        // filled: false,   // 增加input边框背景色
      ),
    );
  }
}