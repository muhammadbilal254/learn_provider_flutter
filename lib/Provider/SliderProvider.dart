import 'package:flutter/material.dart';

class Sliderprovider extends ChangeNotifier {
  double slider = 20;

  void onSliderChange(double val) {
    slider = val.ceilToDouble();
    print("Slider : " + val.toString());
    notifyListeners();
  }
}
