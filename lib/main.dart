import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';
import 'package:amap_base/amap_base.dart';
import 'package:fluwx/fluwx.dart' as fluwx;
import 'package:flutter_app/routers/routes.dart';
import 'package:flutter_app/routers/application.dart';
import 'package:flutter_app/pages/index_page.dart';
import 'package:provide/provide.dart';
import 'package:flutter_app/provide/counter.dart';

void main() {
  // 初始化高德地图
  AMap.init('2c65046854d175fafaf308af1ac36b0e');
  // 初始化微信SDK
  fluwx.register(appId: "wx0a8d136c517c6488");

  var counter = Counter();
  var providers = Providers();
  providers..provide(Provider<Counter>.value(counter));

  runApp(ProviderNode(
    child: MyApp(),
    providers: providers,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //-------------------路由主要代码start
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
    //-------------------路由主要代码end

    return Container(
      child: MaterialApp(
        title: 'Flutter Demo',
        //----------------路由主要代码start
        onGenerateRoute: Application.router.generator,
        //----------------路由主要代码end
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        ),
        home: IndexPage(),
      ),
    );
  }
}
