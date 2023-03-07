import 'package:flutter/material.dart';
import 'package:s40_2011_simulator/pages/home/home_view.dart';
import 'package:s40_2011_simulator/pages/menu/menu_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Nokia"
      ),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        "/menu": (context) => const MenuPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}