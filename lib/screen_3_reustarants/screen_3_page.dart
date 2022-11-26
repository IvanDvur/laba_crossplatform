// Экран ресторанов
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Widget/CathegoryCard.dart';

import 'Data/CategoryData.dart';

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
        title: Text(
          'Dostavka',
          style: GoogleFonts.jetBrainsMono(
              fontWeight: FontWeight.w900, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      /////////////////////////////////////////////////////////////////////////
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
                alignment: Alignment.topCenter,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: categories
                      .map((categories) => buildCategoryCard(context,
                          image: categories.icon, title: categories.title))
                      .toList(),
                )),
          ),
          Expanded(
              flex: 8,
              child: Container(
                child: ListView(
                  children: [],
                ),
              ))
        ],
      ),
      /////////////////////////////////////////////////////////////////////////
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
        selectedItemColor: Colors.amber[800],
      ),
      //////////////////////////////////////////////////////////////////////////
    );
  }

  Widget buildCategoryCard(BuildContext context,
          {required String image, required String title}) =>
      FractionallySizedBox(
        heightFactor: 1,
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
