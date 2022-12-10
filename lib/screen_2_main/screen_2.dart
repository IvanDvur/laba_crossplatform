// Главный экран
import 'package:flutter/material.dart';
import 'package:lab_crossplatform/screen_2_main/Data/carusel_main.dart';
import 'package:lab_crossplatform/screen_2_main/Data/circle_main.dart';
import 'package:lab_crossplatform/screen_2_main/Data/square_main.dart';

import '../screen_5_dish/screen_5_model.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({Key? key}) : super(key: key);

  @override
  State<TwoScreen> createState() => MainScreenPage_2();
}

class MainScreenPage_2 extends State<TwoScreen> {

  final List<Dish> _posts = [
    const Dish (title: "post 1", iconUrl: "lib/assets/images/Abstract 2 by Meriç Dağlı  on Unsplash (large).jpg.jpg", description: "Фон 1" ),
    const Dish (title: "post 2", iconUrl: "lib/assets/images/Abstract 1 by Delila Ziebart on Unsplash (large).jpg.jpg", description: "Фон 2" ),
    const Dish (title: "post 3", iconUrl: "lib/assets/images/Abstract 3 by Meriç Dağlı  on Unsplash (large).jpg.jpg", description: "Фон 3" ),
    const Dish (title: "post 4", iconUrl: "lib/assets/images/Abstract 4 by Viktoria Sotsugova on Unsplash (large).jpg.jpg", description: "Фон 4" ),
  ];

  final List _stories = [
    const Dish (title: "post 1", iconUrl: "lib/assets/images/bread.png", description: "Фон 1" ),
    const Dish (title: "post 2", iconUrl: "lib/assets/images/sausage.svg", description: "Фон 2" ),
    const Dish (title: "post 4", iconUrl: "lib/assets/images/tomato.svg", description: "Фон 4" ),
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
                    itemCount: _posts.length,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyRectangle(
                          child: _posts[index].title,
                          childIcon: _posts[index].iconUrl,
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
                    itemCount: _stories.length,
                    itemBuilder: (context, index) {
                      return MySquare(
                        child: _stories[index].title,
                        childIcon: _stories[index].iconUrl,
                      );
                    },
                  ),
              )
            ],
          )
      ),
    );
  }
}