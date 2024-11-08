/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-02 15:43:02
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-16 11:19:45
 * @Description: In User Settings Edit
 */
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'pages/index_page.dart';
import 'routes/Routes.dart';
import 'routes/getx_router_observer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(750, 1334),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          getPages: Routes.getPages,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.blue,
          ),
          home: const IndexPage(),

          /// 资源释放监听器
          navigatorObservers: [GetXRouterObserver()],
        );
      },
    );
  }
}
