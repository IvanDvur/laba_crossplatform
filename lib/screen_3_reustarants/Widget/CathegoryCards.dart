import 'package:flutter/material.dart';

class CathegoryCard extends StatelessWidget {
  final String title;
  final String image;
  final double width;
  const CathegoryCard(
      {required this.title, required this.image, this.width = 100.0, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: buildTitle(context, title: title),
                  )
                ],
              )
            ],
          ),
        ),
      );
}
