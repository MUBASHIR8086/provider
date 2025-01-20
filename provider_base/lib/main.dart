import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_base/page1.dart';
import 'package:provider_base/provider_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Providerdemo(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home:Page1()
      ),
    );
  }
}

