import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 10;

  get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
