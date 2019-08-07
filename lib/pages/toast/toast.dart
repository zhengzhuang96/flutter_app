import 'package:flutter/material.dart';
import 'package:flutter_app/utils/utils_export.dart';

/* *
 * toast轻提示
 */
class ToastMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast轻提示'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('顶部toast'),
              onPressed: () {
                toastTop('顶部toast');
              },
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('中间toast'),
              onPressed: () {
                toastCenter('中间toast');
              },
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('底部toast'),
              onPressed: () {
                toastBottom('底部toast');
              },
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('取消toast'),
              onPressed: () {
                toastCancel('取消toast');
              },
            ),
          ],
        ),
      ),
    );
  }
}