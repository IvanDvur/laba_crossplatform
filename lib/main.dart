import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_2_main/screen_2.dart';
import 'package:lab_crossplatform/screen_3_reustarants/screen_3_page.dart';

import 'main/screen_all.dart';

// ignore_for_file: prefer_const_constructors
//Функция зупускающая приложение
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
      home: MainScreenAllPagesWidget(),
    );
  }
}
