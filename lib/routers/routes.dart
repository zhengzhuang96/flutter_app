import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './router_handler.dart';

class Routes {
  static String root = '/';
  static String homePage = '/homePage';
  static String textWidget = '/textWidget';
  static String routePassingValue = '/routePassingValue';
  static String containerWidget = '/containerWidget';
  static String imageWidget = '/imageWidget';
  static String listViewWidget = '/listViewWidget';
  static String gridViewWidget = '/gridViewWidget';
  static String gaodeMap = '/gaodeMap';
  static String wechatFluwx = '/wechatFluwx';
  static String aliPayTobias = '/aliPayTobias';
  static String toastMessage = '/toastMessage';
  static String flutterSwiper = '/flutterSwiper';
  static String cachedNetworkImage = '/cachedNetworkImage';
  static String chartsFlutter = '/chartsFlutter';
  static String flutterDropdownMenu = '/flutterDropdownMenu';
  static String voiceSetPage = '/voiceSetPage';
  static String ajaxPage = '/ajaxPage';
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
    router.define(homePage, handler: homePageHanderl);
    router.define(textWidget, handler: textWidgetHanderl);
    router.define(routePassingValue, handler: routePassingValueHanderl);
    router.define(containerWidget, handler: containerWidgetHanderl);
    router.define(imageWidget, handler: imageWidgetHanderl);
    router.define(listViewWidget, handler: listViewWidgetHanderl);
    router.define(gridViewWidget, handler: gridViewWidgetHanderl);
    router.define(gaodeMap, handler: gaodeMapHanderl);
    router.define(wechatFluwx, handler: wechatFluwxHanderl);
    router.define(aliPayTobias, handler: aliPayTobiasHanderl);
    router.define(toastMessage, handler: toastMessageHanderl);
    router.define(flutterSwiper, handler: flutterSwiperHanderl);
    router.define(cachedNetworkImage, handler: cachedNetworkImageHanderl);
    router.define(chartsFlutter, handler: chartsFlutterHanderl);
    router.define(flutterDropdownMenu, handler: flutterDropdownMenuHanderl);
    router.define(voiceSetPage, handler: voiceSetPageHanderl);
    router.define(ajaxPage, handler: ajaxPageHanderl);
  }
}
