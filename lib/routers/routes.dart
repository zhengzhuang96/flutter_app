import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './router_handler.dart';

class Routes {
  static String root = '/';
  static String textWidget = '/textWidget';
  static String routePassingValue = '/routePassingValue';
  static String containerWidget = '/containerWidget';
  static String imageWidget = '/imageWidget';
  static String listViewWidget = '/listViewWidget';
  static String gridViewWidget = '/gridViewWidget';
  static String gaodeMap = '/gaodeMap';
  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print('ERROR====>ROUTE WAS NOT FONUND!!!'); // 找不到路由，跳转404页面
        // Navigator.pushNamed(context, "/notFound"); 
        // Navigator.of(context).pushNamed("NotFound");
      },
    );

    // 路由页面配置
    // router.define('/category/error/404', handler: notFoundHanderl);
    router.define(textWidget, handler: textWidgetHanderl);
    router.define(routePassingValue, handler: routePassingValueHanderl);
    router.define(containerWidget, handler: containerWidgetHanderl);
    router.define(imageWidget, handler: imageWidgetHanderl);
    router.define(listViewWidget, handler: listViewWidgetHanderl);
    router.define(gridViewWidget, handler: gridViewWidgetHanderl);
    router.define(gaodeMap, handler: gaodeMapHanderl);
  }
}
