import 'package:exam/home.dart';
import 'package:exam/second_screen.dart';
import 'package:exam/third_screen.dart';
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
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SecondScreen.routeName:(context) => SecondScreen(),
        ThirdScreen.routeName:(context) => ThirdScreen(),
      },

    );
  }
}


