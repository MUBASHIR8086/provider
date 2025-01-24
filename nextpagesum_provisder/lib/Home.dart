import 'package:flutter/material.dart';
import 'package:passwordchange_provider/provider.dart';
import 'package:passwordchange_provider/sumpage.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
   Home({super.key});
  TextEditingController firstnumbercontroler=TextEditingController();
    TextEditingController secondnumbercontroler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<providerdemo>(
        builder: (context, value, child) {
        return Column(
    children: [
      TextField(
        controller: firstnumbercontroler,
        decoration: InputDecoration(
          label: Text("Enter a number")
        ),
      ),
      TextField(
        controller: secondnumbercontroler,
        decoration: InputDecoration(
          label: Text("Enter a number")
        ),
      ),
      ElevatedButton(onPressed: (){
      final first=firstnumbercontroler.text;
      final second=secondnumbercontroler.text;

      if(int.tryParse(first)==null||int.tryParse(second)==null){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("asalamu alayikum")));
        return;
      }
      value.addnumber(first, second);
      
        value.addListener((){
          if(!value.isloged){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Sumpage()));
          }
        });
        
      
        
        
      }, child:Text("neki nok")),
      if(value.isloged)
      CircularProgressIndicator()
        
          

            
      
      
     
    ],
        );
        }
      ),
    );
  }
}