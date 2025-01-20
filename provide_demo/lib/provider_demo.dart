import 'package:flutter/material.dart';

class ProviderDemo with ChangeNotifier {
  bool Error=false;
  bool isLoading=false;
  int calcuvalue=0;
  void addnumber(String first,String second)async{
    if(int.tryParse(first)==null||int.tryParse(second)==null){
      Error =true;
      notifyListeners();
      return;
    }
    Error=false;
    isLoading=true;
    notifyListeners();

  await Future.delayed(Duration(seconds:3 ));

  int fristNumber=int.parse(first);
  int secoundNumber=int.parse(second);
   calcuvalue =fristNumber+secoundNumber;
  isLoading =false;
  notifyListeners();


  } 
  
}

