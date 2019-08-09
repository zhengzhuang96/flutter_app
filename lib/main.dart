import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';
import 'package:amap_base/amap_base.dart';
import 'package:fluwx/fluwx.dart' as fluwx;
import 'package:flutter_app/routers/routes.dart';
import 'package:flutter_app/routers/application.dart';
import 'package:flutter_app/pages/index_page.dart';

void main() {
  // 初始化高德地图
  AMap.init('2c65046854d175fafaf308af1ac36b0e');
  // 初始化微信SDK
  fluwx.register(appId:"wx0a8d136c517c6488");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //-------------------路由主要代码start
    final router = Router();
    Routes.configureRoutes(router);
    Application.router=router;
    //-------------------路由主要代码end

    return Container(
      child: MaterialApp(
        title: 'Flutter Demo',
        //----------------路由主要代码start
        onGenerateRoute: Application.router.generator,
        //----------------路由主要代码end
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink),
        home: IndexPage(),
      ),
    );
  }
}
