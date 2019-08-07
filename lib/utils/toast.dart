import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/* *
 * toast
 */

// 顶部Toast
Future<bool> toastTop(String text) {
  return Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIos: 1,
      backgroundColor: Color.fromARGB(123, 0, 0, 0),
      textColor: Colors.white,
      fontSize: 13.0);
}

// 中间Toast
Future<bool> toastCenter(String text) {
  return Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Color.fromARGB(123, 0, 0, 0),
      textColor: Colors.white,
      fontSize: 13.0);
}

// 底部Toast
Future<bool> toastBottom(String text) {
  return Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIos: 1,
      backgroundColor: Color.fromARGB(123, 0, 0, 0),
      textColor: Colors.white,
      fontSize: 13.0);
}

// 取消Toast
Future<bool> toastCancel(String text) {
  return Fluttertoast.cancel();

}
