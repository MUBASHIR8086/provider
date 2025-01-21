
import 'package:changecolor_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  Column(
      children: [
        Expanded(
          child: Consumer<printNumber>(
            builder: (context, value, child) =>  ListView.builder(
              itemCount: value.arr.length,
              itemBuilder: (context, index) {
                
              return ListTile(
            title: Text(value.arr[index].toString()),
              );
            },),
          ),
        ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: (){
            Provider.of<printNumber>(context,listen: false).print();
            }, child:Text("print")),
          ),
          Gap(10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){
            Provider.of<printNumber>(context,listen: false).clear();
          }, child:Text("clear"))
        ],
      )
  
      ],
    ));
  }
}