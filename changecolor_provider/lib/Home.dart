
import 'package:changecolor_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
      int index =  Provider.of<changecolor>(context).index;
      Color color = Provider.of<changecolor>(context,).conntainercolor[index];
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: 
      GestureDetector(
        onTap: () {
          Provider.of<changecolor>(context,listen: false).changecolors();
          Provider.of<changecolor>(context,listen: false).indexchange();
          
        },
        child: Container(
          color: color,
        
        ),
      ),),
    );
  }
}