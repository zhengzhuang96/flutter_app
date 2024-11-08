/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-02 16:17:56
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-16 10:59:40
 * @Description: In User Settings Edit
 */
import 'package:get/get.dart';

class NavigatorUtil {
  // 返回
  static void goBack() {
    Get.back();
  }

  // 带参数的返回
  static void goBackWithParams(result) {}

  // 路由返回指定页面
  static void goBackUrl(String title) {}

  // 跳转到主页面
  static void goIndexPage() {}

  /// 跳转到 转场动画 页面, 自定义转场动画，后续加入
  static void jump(String title) {
    Get.toNamed(title);
  }

  // /// 框架自带的有 native，nativeModal，inFromLeft，inFromRight，inFromBottom，fadeIn，custom
  // static Future jumpLeft(String title) {}

  // static Future jumpRemove() {}

  // /// 自定义 转场动画
  // static Future gotransitionCustomDemoPage(String title) {}

  // /// 使用 IOS 的 Cupertino 的转场动画，这个是修改了源码的 转场动画
  // /// Fluro本身不带，但是 Flutter自带
  // static Future gotransitionCupertinoDemoPage(}

  // // 跳转到主页面IndexPage并删除当前路由
  // static void goToHomeRemovePage() {}

  // // 跳转到登录页并删除当前路由
  // static void goToLoginRemovePage() {}
}
