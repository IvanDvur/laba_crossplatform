// Экран ресторанов
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Главная',
      style: optionStyle,
    ),
    Text(
      'Рестораны',
      style: optionStyle,
    ),
    Text(
      'Корзина',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dostavka'),
      ),
      body: Container(
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Главная'),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Рестораны',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Корзина',
          )
        ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
