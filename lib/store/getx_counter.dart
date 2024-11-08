/*
 * @Author: {zhengzhuang}
 * @Date: 2022-08-02 16:33:48
 * @LastEditors: {zhengzhuang}
 * @LastEditTime: 2022-08-02 16:57:51
 * @Description: In User Settings Edit
 */
import 'package:get/get.dart';

class GetxCounter extends GetxController {
  var count = 0;

  // 增加计数器
  void increase() {
    ++count;
    update();
  }

  // 减少计数器
  void decrease() {
    --count;
    update();
  }
}
