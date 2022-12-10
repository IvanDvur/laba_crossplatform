


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_4_cart/screen_4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Generated App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: ScreenFourPage(),
    );
  }
}