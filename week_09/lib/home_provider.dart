import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;

  int _ziker = 0;
  int get ziker => _ziker;

  bool _themeIsDark = false;
  bool get themeIsDark => _themeIsDark;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void incrementZiker() {
    _ziker++;
    notifyListeners();
  }

  void toggleTheme() {
    _themeIsDark = !_themeIsDark;
    notifyListeners();
  }
}
