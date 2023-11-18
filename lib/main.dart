import 'package:ecommercetodo/Login.dart';
import 'package:ecommercetodo/SplashScreen.dart';
import 'package:ecommercetodo/WelcomePage.dart';
import 'package:ecommercetodo/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'RedHatDisplay'),
      home: SplashScreen(),
    );
  }
}
