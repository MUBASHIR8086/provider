import 'package:flutter/material.dart';

class Providerdemo extends ChangeNotifier {

  String name="Hello";
  String get text=>name;
  void lowercase(){
    name=name.toLowerCase();
    notifyListeners();
  }
  void uppercase(){
    name=name.toUpperCase();
    notifyListeners();
  }
  
}