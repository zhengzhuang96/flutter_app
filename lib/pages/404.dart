import 'package:flutter/material.dart';

/* *
 * 404
 */
class NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Container(
        child: Center(
          child: Text(
            '404, 页面走丢了',
            style: TextStyle(
              fontSize: 35,
              color: Colors.blue
            ),
          ),
        ),
      ),
    );
  }
}
