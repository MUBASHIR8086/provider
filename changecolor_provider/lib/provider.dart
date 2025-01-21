
import 'package:flutter/material.dart';



class changecolor with ChangeNotifier {
  List<Color>conntainercolor=[Colors.black,Colors.blue,Colors.green,Colors.red];
  int index=0;

  void indexchange(){
    if(index<3){
      index++;
    }else{
      index=0;
    }
    notifyListeners();

  }
  void changecolors(){
    if(index==0){
      conntainercolor[0];
    }else if(index ==1){
      conntainercolor[1];
    }else if(index==3){
      conntainercolor[3];

    }
    notifyListeners();
  }
  
}

// class changeColors extends ChangeNotifier{
//   List<Color> containerColor = [Colors.black,Colors.red,Colors.green,Colors.blue];
//  int  index =0;
     
//   void indexchange(){
//       if(index <3){
//         index++;
//       }else{
//         index=0;
//       }
//       notifyListeners();
//   }
//       void  colorchn(){
//     if(index == 0){
//       containerColor[0];
//     }else if(index == 1){
//       containerColor[1];
//     }else if(index == 2){
//       containerColor[2];
//     }
//     notifyListeners();
//   }
// }