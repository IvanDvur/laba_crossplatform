// Экран ресторанов
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Widget/CathegoryCard.dart';
import 'package:lab_crossplatform/screen_3_reustarants/Widget/RestaurantCard.dart';

import '../screen_5_dish/screen_5_page.dart';
import 'Data/CategoryData.dart';
import 'Data/RestaurantData.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

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
          'Рестораны',
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
            child: InkWell(
              child: Container(
                height: double.infinity,
                width: 380,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: restaurants.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (contex, index) {
                    return buildReustarantCard(context,
                        name: restaurants[index].name,
                        image: restaurants[index].image,
                        cathegory: restaurants[index].cathegory);
                  },
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FifthScreen(name: "Delivery")));
              },
            ),
          )
        ],
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

  Widget buildReustarantCard(BuildContext context,
          {required String name,
          required String image,
          required List<String> cathegory}) =>
      Expanded(
        child: ReustarantCard(
          image: image,
          name: name,
          category: cathegory,
        ),
      );
}

/*Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
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
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: restaurants
                  .map((restaurants) => buildReustarantCard(context,
                      name: restaurants.name,
                      image: restaurants.image,
                      cathegory: restaurants.cathegory))
                  .toList(),
            ),
          )
        ],
      ),*/
