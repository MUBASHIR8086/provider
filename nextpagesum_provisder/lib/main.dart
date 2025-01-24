import 'package:flutter/material.dart';
import 'package:passwordchange_provider/Home.dart';
import 'package:passwordchange_provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => providerdemo(),
      child: MaterialApp(
      
        home:Home(),
      ),
    );
  }
}
