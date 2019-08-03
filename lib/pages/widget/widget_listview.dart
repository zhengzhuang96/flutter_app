import 'package:flutter/material.dart';

/* *
 * ListView列表组件
 */
class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('ListView Widget'),
      ),
      body: new Container(
        child: PortraitView(),
      ),
    );
  }
}

// 纵向列表
class PortraitView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.access_time),
          title: new Text('access_time'),
        ),
        new ListTile(
          leading: new Icon(Icons.access_time),
          title: new Text('access_time'),
        ),
        new Image.network(
            'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
        new Image.network(
            'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg'),
        new Image.network(
            'http://jspang.com/static/upload/20181109/1bHNoNGpZjyriCNcvqdKo3s6.jpg')
      ],
    );
  }
}

// 横向列表
class TransverseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            width: 180.0,
            color: Colors.lightBlue,
          ),
          new Container(
            width: 180.0,
            color: Colors.red,
          ),
          new Container(
            width: 180.0,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

/**
 * 动态列表
 * var myList = List(): 非固定长度的声明
 * var myList = List(2): 固定长度的声明
 * var myList= List<String>():固定类型的声明方式
 * var myList = [1,2,3]: 对List直接赋值
 */
// class DynamicList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
