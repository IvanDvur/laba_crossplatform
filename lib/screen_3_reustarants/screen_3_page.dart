// Экран ресторанов
import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Data/Cathegories.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Widget/CathegoryCards.dart';

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
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: cathegories
            .map((categories) => buildCatCard(context,
                image: categories.icon, title: categories.title))
            .toList(),
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

  Widget buildCatCard(BuildContext context,
          {required String image, required String title}) =>
      FractionallySizedBox(
        heightFactor: 0.25,
        child: CathegoryCard(title: title, image: image),
      );
}
