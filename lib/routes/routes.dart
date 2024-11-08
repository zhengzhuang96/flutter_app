/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-02 16:10:09
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-16 11:28:45
 * @Description: In User Settings Edit
 */
import 'package:get/route_manager.dart';

import '../pages/index_page.dart';

// 项目模版，新项目可删除模版
import '../pages/example/counters/counters_new_page.dart';
import '../pages/example/counters/counters_page.dart';
import '../pages/example/screenutil/screenutil_page.dart';
import '../pages/example/update/update_page.dart';
import '../pages/example/loading/loading_page.dart';

class Routes {
  // 主页面
  static const String index = '/';

  // 项目模版，新项目可删除一下模版
  static const String counters = '/counters'; // 计数器页面
  static const String countersNew = '/countersNew'; // 计数器子页面
  static const String screenutil = '/screenutil'; // 屏幕适配方案
  static const String update = '/update'; // App升级方案
  static const String loading = '/loading'; // loading动画

  static final List<GetPage> getPages = [
    GetPage(name: index, page: () => const IndexPage()),

    // 项目模版，新项目可删除模版
    GetPage(name: counters, page: () => CountersPage()),
    GetPage(name: countersNew, page: () => CountersNewPage()),
    GetPage(name: screenutil, page: () => const ScreenutilPage()),
    GetPage(name: update, page: () => const UpdatePage()),
    GetPage(name: loading, page: () => const LoadingPage()),
  ];
}
