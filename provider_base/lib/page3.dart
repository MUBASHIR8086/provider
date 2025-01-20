import 'package:flutter/material.dart';
import 'package:provider_base/page1.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Page1()));}, child:Text("Page3",style: TextStyle(color: Colors.black),)),
          ),
        ],
      ),
    );
  }
}