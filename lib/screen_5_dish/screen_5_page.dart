import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_crossplatform/screen_5_dish/screen_5_model.dart';

import 'Data/DishData.dart';

class FifthScreen extends StatefulWidget {
  FifthScreen({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  State<StatefulWidget> createState() => _FifthScreenState(this.name);
}

class _FifthScreenState extends State<FifthScreen> {
  String name;

  _FifthScreenState(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: GoogleFonts.jetBrainsMono(
              fontWeight: FontWeight.w900, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 10,
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(dishes.length, (index) {
            return Center(
              child: DishModalBottomSheet(dish: dishes[index]),
            );
          }),
        ),
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
        selectedItemColor: Colors.amber[800],
        currentIndex: 1,
      ),
    );
  }
}

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.dish}) : super(key: key);
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Center(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Image.asset(dish.iconUrl)),
            Text(dish.title),
          ]),
    ));
  }
}

class DishModalBottomSheet extends StatelessWidget {
  const DishModalBottomSheet({Key? key, required this.dish}) : super(key: key);
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: SelectCard(
        dish: dish,
      ),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 200,
              color: Colors.amber,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      dish.iconUrl,
                      height: 50.0,
                      width: 50.0,
                    ),
                    Text(dish.description),
                    // const Text(dish.description),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Icon(Icons.remove, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                backgroundColor:
                                    Colors.blue, // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                            ),
                            Text("1"),
                            ElevatedButton(
                              onPressed: () {},
                              child: Icon(Icons.add, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(20),
                                backgroundColor:
                                    Colors.blue, // <-- Button color
                                foregroundColor: Colors.red, // <-- Splash color
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              child: const Text('Добавить в корзину'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
