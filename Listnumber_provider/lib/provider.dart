import 'package:flutter/material.dart';


class printNumber with ChangeNotifier{
    final arr = [];
  int number = 1;
  void print(){
     arr.add(number++);
   notifyListeners();

 
  }
    void clear(){
    arr.clear();
    number=1;
    notifyListeners();
   }
}