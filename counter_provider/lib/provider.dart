import 'package:flutter/material.dart';

class counters extends ChangeNotifier{
  int count=0;
  void increment(){
    count++;
    notifyListeners();
  }

  void decreament(){
    count--;
    notifyListeners();
  }

  void clear(){
    count=0;
    notifyListeners();
  }
}