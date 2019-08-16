import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int value = 1;
  
  increment() {
    value++;
    notifyListeners();
  }
}