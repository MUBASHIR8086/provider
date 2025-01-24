import 'package:flutter/material.dart';
import 'package:passwordchange_provider/provider.dart';
import 'package:provider/provider.dart';

class Sumpage extends StatelessWidget {
  const Sumpage({super.key});

  @override
  Widget build(BuildContext context) {
    final sum=Provider.of<providerdemo>(context).sum;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("${sum}"))
        ],
      ),
    );
  }
}