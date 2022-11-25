// Экран ресторанов
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Data/Cathegories.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Widget/CathegoryCards.dart';

class ThirdScreen extends StatefulWidget {
  ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        title: Text('Dostavka'),
      ),
      /////////////////////////////////////////////////////////////////////////
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: cathegories
                  .map((categories) => buildCatCard(context,
                      image: categories.icon, title: categories.title))
                  .toList(),
            ),
          ),
          Expanded(flex: 4, child: Container())
        ],
      ),
      /////////////////////////////////////////////////////////////////////////
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
      ),
      //////////////////////////////////////////////////////////////////////////
    );
  }

  Widget buildCatCard(BuildContext context,
          {required String image, required String title}) =>
      FractionallySizedBox(
        heightFactor: 0.25,
        child: CathegoryCard(title: title, image: image),
      );
}
/*Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: const Center(
                      child: Text(
                        "ListView1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],*/

/*ListView(
          scrollDirection: Axis.horizontal,
          children: cathegories
              .map((categories) => buildCatCard(context,
                  image: categories.icon, title: categories.title))
              .toList(),
        ),*/
