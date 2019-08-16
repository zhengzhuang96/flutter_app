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
  static String webview = '/webview';
  static String loading = '/loading';
  static String flutterEasyrefresh = '/flutterEasyrefresh';
  static String basicPage = '/basicPage';
  static String phoenixPage = '/phoenixPage';
  static String userProfilePage = '/userProfilePage';
  static String urlLauncher = '/urlLauncher';
  static String screenPage = '/screenPage';
  static String appUpdate = '/appUpdate';
  static String providePage = '/providePage';
  static String barcodeScan = '/barcodeScan';
  static String blocDemo = '/blocDemo';
  static String drawerDemo = '/drawerDemo';
  static String sliversDemo = '/sliversDemo';
  static String tabbarDemo = '/tabbarDemo';
  static String formDemo = '/formDemo';
  static String formRegister = '/formRegister';
  static String materialComponents = '/materialComponents';
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
    router.define(webview, handler: webviewHanderl);
    router.define(loading, handler: loadingHanderl);
    router.define(flutterEasyrefresh, handler: flutterEasyrefreshHanderl);
    router.define(basicPage, handler: basicPageHanderl);
    router.define(phoenixPage, handler: phoenixPageHanderl);
    router.define(userProfilePage, handler: userProfilePageHanderl);
    router.define(urlLauncher, handler: urlLauncherHanderl);
    router.define(screenPage, handler: screenPageHanderl);
    router.define(appUpdate, handler: appUpdateHanderl);
    router.define(providePage, handler: providePageHanderl);
    router.define(barcodeScan, handler: barcodeScanHanderl);
    router.define(blocDemo, handler: blocDemoHanderl);
    router.define(drawerDemo, handler: drawerDemoHanderl);
    router.define(sliversDemo, handler: sliversDemoHanderl);
    router.define(tabbarDemo, handler: tabbarDemoHanderl);
    router.define(formDemo, handler: formDemoHanderl);
    router.define(formRegister, handler: formRegisterHanderl);
    router.define(materialComponents, handler: materialComponentsHanderl);
  }
}
