import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import 'package:flutter_app/provide/counter.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provide<Counter>(
        builder: (context, child, counter) {
          return Text('${counter.value}');
        },
      ),
    );
  }
}