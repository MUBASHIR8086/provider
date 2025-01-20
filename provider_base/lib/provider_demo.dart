
import 'package:flutter/material.dart';

class Providerdemo with ChangeNotifier {
  String supe="hello";
 
  
void changestring(){
  supe="code";
  notifyListeners();
}


}