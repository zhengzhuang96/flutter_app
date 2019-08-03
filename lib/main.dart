import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluro/fluro.dart';
import './routers/routes.dart';
import './routers/application.dart';
import './pages/index_page.dart';

void main() {
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
