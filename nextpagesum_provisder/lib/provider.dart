import 'package:flutter/material.dart';

class providerdemo extends ChangeNotifier {
 bool erro=false;
 bool isloged=false;
 int sum=0;
 void addnumber(String first,String second)async{
  if(int.tryParse(first)==null||int.tryParse(second)==null){
    erro=true;
    notifyListeners();
    return;
  }
  isloged =true;
  erro=false;
  notifyListeners();


  await Future.delayed(Duration(seconds: 3));

  int firstnumber=int.parse(first);
  int secondnumber=int.parse(second);
  sum=firstnumber+secondnumber;
  isloged=false;
  notifyListeners();
 }
  
}