// Главный экран
import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_2_main/Data/carusel_main.dart';
import 'package:lab_crossplatform/screen_2_main/Data/circle_main.dart';
import 'package:lab_crossplatform/screen_2_main/Data/square_main.dart';

import '../screen_2_main/screen_2.dart';
import '../screen_3_reustarants/screen_3_page.dart';
import '../screen_4_cart/screen_4.dart';

class MainScreenAllPagesWidget extends StatefulWidget {
  const MainScreenAllPagesWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenAllPagesWidget> createState() => MainScreenAllPages();
}

class MainScreenAllPages extends State<MainScreenAllPagesWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    TwoScreen(),
    ThirdScreen(),
    ScreenFourPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_outlined),
            label: 'Рестораны',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Корзина',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
