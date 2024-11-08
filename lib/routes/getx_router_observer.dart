/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-02 16:16:25
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-02 16:16:25
 * @Description: In User Settings Edit
 */
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/router_report.dart';

class GetXRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    RouterReportManager.reportCurrentRoute(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    RouterReportManager.reportRouteDispose(route);
  }
}
