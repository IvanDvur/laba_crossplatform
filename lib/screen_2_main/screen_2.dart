// Главный экран
import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_2_main/Data/carusel_main.dart';
import 'package:lab_crossplatform/screen_2_main/Data/circle_main.dart';
import 'package:lab_crossplatform/screen_2_main/Data/square_main.dart';

class MainScreen extends StatelessWidget {

  final List _posts = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
  ];

  int _current_index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 30),
                child: Text("Акции", style: TextStyle(fontSize: 36, fontStyle: FontStyle.normal ),),
              ),
              // stories
              Container(
                  height: 150,
                  // child: CarouselApp(),
                  child: ListView.builder(
                    itemCount: _stories.length,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyRectangle(
                          child: _stories[index],
                        );
                      })
              ),

              Container(
                margin: EdgeInsets.only(left: 10, top: 30),
                child: Text("Заказывали ранее", style: TextStyle(fontSize: 36, fontStyle: FontStyle.normal ),),
              ),

              // posts
              Expanded(
                flex: 5,
                  child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      return MySquare(
                        child: _posts[index],
                      );
                    },
                  ),
              )
            ],
          )
      ),


      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
            _current_index = index;
        },
        currentIndex: _current_index,
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
    );
  }
}