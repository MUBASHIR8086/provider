import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_base/page3.dart';
import 'package:provider_base/provider_demo.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blue,),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>Page3()));}, child:Text("Page2",style: TextStyle(color: Colors.black),)),
        ),
        Text(Provider.of<Providerdemo>(context).supe)
      ],
    ),);
  }
}