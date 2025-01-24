import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 1;

  // Function to increase the counter
  void increaseConter() {
    counter++;
    print(counter);
    notifyListeners();
  }

  // Function to decrease the counter
  void decreaseConter() {
    counter--;
    print(counter);
    notifyListeners();
  }
}
