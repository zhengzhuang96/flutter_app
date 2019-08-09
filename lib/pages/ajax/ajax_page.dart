import 'package:flutter/material.dart';
import 'package:flutter_app/service/service_method.dart';

/* *
 * ajax
 */
class AjaxPage extends StatefulWidget {
  @override
  _AjaxPageState createState() => _AjaxPageState();
}

class _AjaxPageState extends State<AjaxPage> {
  String textData = '暂无数据';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajax数据请求'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('post请求'),
                  onPressed: () {
                    print('post请求');
                    _getGoodsList();
                  },
                ),
                Text(textData),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _getGoodsList() {
    request('getGoodsList', formData: {'page': 1, 'pageSize': 10}).then((val) {
      print(val);
      print('获取完成==========》》》》》》》');
      setState(() {
        textData = val.toString();
      });
    });
  }
}
