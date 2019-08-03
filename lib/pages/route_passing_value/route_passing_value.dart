import 'package:flutter/material.dart';

class RoutePassingValue extends StatelessWidget {
  final String goodsId;
  RoutePassingValue(this.goodsId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由传值'),
      ),
      body: Container(
        child: Text('商品ID为：$goodsId'),
      ),
    );
  }
}
