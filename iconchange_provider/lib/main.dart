import 'package:flutter/material.dart';
import 'package:password_provider/Home.dart';
import 'package:password_provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Providerdemo(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()),
    ),
  );
}
