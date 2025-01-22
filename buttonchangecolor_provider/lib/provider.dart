import 'package:flutter/material.dart';

class Providerdemo extends ChangeNotifier {
  List<Color>changecolor=[Colors.red,Colors.yellow,Colors.green,Colors.black];
  int index=0;
  
  void buttoncahnge(){
    if(index<2){
      index++;
    }else{
      index=0;
    }
    notifyListeners();
  }
  void changebutton(){
    if(index==0){
     changecolor[0];
    }else if(index==1){
      changecolor[1];
    }else if(index==2){
      changecolor[2];
    }
    notifyListeners();
  }
  
}