import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provide_demo/home.dart';
import 'package:provide_demo/provider_demo.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>ProviderDemo())
      ],     
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:HomePage(),
      ),
    );
  }
}

