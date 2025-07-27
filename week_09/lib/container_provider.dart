import 'package:flutter/material.dart';

class ContainerProvider with ChangeNotifier {
  double _silderValue = 0.0;
  double get sliderValue => _silderValue;
  final double _size = 2;
  double get value => _size;
  void changeInSlider(double value) {
    _silderValue = value;
    notifyListeners();
  }
}
