import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_base/page2.dart';
import 'package:provider_base/provider_demo.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: (){Navigator.push(context,MaterialPageRoute(builder:(context)=>Page2()));}, child:Text("Page1",style: TextStyle(color: Colors.black),),),
          ),
          Text(Provider.of<Providerdemo>(context).supe),
          TextButton(onPressed: (){ Provider.of<Providerdemo>(context,listen: false).changestring();
}, child:Text("changestring"))
        
        ],
      ),
    );
  }
}