import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:password_provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,),
      body: Consumer<Providerdemo>(
        builder: (context, value, child) {
          
        
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Provider.of<Providerdemo>(context).name,style: TextStyle(color: Colors.red),),
             Gap(20),
             ElevatedButton(onPressed: (){
              Provider.of<Providerdemo>(context,listen: false).lowercase();
              
             }, child: Text("Lower case")),
             Gap(10),
             ElevatedButton(onPressed: (){
              Provider.of<Providerdemo>(context,listen: false).uppercase();
             }, child:Text("upper case"))
        
              
            ],
          ),
        );
   } ),
    );
  }
}