import 'package:flutter/material.dart';
import 'package:password_provider/provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    int index=Provider.of<Providerdemo>(context).index;
    Color colorss=Provider.of<Providerdemo>(context).changecolor[index];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: colorss),
                onPressed: (){
                  Provider.of<Providerdemo>(context,listen: false).buttoncahnge();
                  Provider.of<Providerdemo>(context,listen: false).changebutton();

                }, child:Text("submit"))
            )
        
      );
    
  }
}