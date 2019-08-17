import 'package:flutter/material.dart';
import 'dart:async';

/* *
 * 对话框
 */

enum Option {
  A, B, C
}

enum Action {
  Ok,
  Cancel
}

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  String _choice = 'Nothing';
  String _alertChoice = 'Nothing';
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  Future _openSimpleDialog() async {
    final option = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(   // 选着对话框
          title: Text('打开对话框'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('选项一'),
              onPressed: () {
                Navigator.pop(context, Option.A);
              },
            ),
            SimpleDialogOption(
              child: Text('选项二'),
              onPressed: () {
                Navigator.pop(context, Option.B);
              },
            ),
            SimpleDialogOption(
              child: Text('选项三'),
              onPressed: () {
                Navigator.pop(context, Option.C);
              },
            ),
          ],
        );
      }
    );

    switch (option) {
      case Option.A:
        setState(() {
         _choice = 'A'; 
        });
        break;
      case Option.B:
        setState(() {
         _choice = 'B'; 
        });
        break;
      case Option.C:
        setState(() {
         _choice = 'C'; 
        });
        break;
      default:
    }
  }

  // alert
  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,    // 点击空白处是否可以关闭
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('alert对话框'),
          content: Text('这里是描述'),
          actions: <Widget>[
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
            ),
            FlatButton(
              child: Text('确认'),
              onPressed: () {
                Navigator.pop(context, Action.Ok);
              },
            ),
          ],
        );
      }
    );

    switch (action) {
      case Action.Ok:
        setState(() {
          _alertChoice = '确认';
        });
        break;
      case Action.Cancel:
        setState(() {
          _alertChoice = '取消';
        });
        break;
      default:
    }
  }

  _openBottomSheet() {
    _bottomSheetScaffoldKey
      .currentState
      .showBottomSheet((BuildContext context) {
        return BottomAppBar(
          child: Container(
            height: 90.0,
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.pause_circle_outline),
                SizedBox(width: 16.0,),
                Text('01:30 / 03:30'),
                Expanded(
                  child: Text(
                    'Fix you - Coldplay',
                    textAlign: TextAlign.right
                  ),
                ),
              ],
            ),
          ),
        );
      });
  }

  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.pop(context, 'A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.pop(context, 'B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.pop(context, 'C');
                },
              ),
            ],
          ),
        );
      }
    );

    print(option);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('对话框'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text('你的选择是: $_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('打开alertDialog'),
                  onPressed: _openAlertDialog,
                ),
                Text('alert你的选泽是: $_alertChoice'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('打开 BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('(选择器)点按 BottomSheet'),
                  onPressed: _openModalBottomSheet,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SnackBarButton(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.format_list_numbered),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}

class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('打开 SnackBar, 底部等待中'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('等待中...'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: () {},
            ),
          )
        );
      },
    );
  }
}