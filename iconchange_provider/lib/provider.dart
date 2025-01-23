
import 'package:flutter/material.dart';

class Providerdemo extends ChangeNotifier {
  IconData currentIcon = Icons.home;


  void updateIcon(IconData icon) {
    currentIcon = icon;
    notifyListeners(); 
  }
}