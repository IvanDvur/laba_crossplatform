import 'package:flutter/material.dart';

class ReustarantCard extends StatelessWidget {
  final String name;
  final String image;
  final List<String> category;
  final double height;
  final double width;

  const ReustarantCard(
      {required this.image,
      required this.name,
      required this.category,
      this.width = 900,
      this.height = 400,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: buildImage()),
                ],
              ),
              Expanded(
                child: buildTitle(context, title: name),
              )
            ],
          ),
        ),
      );

  Widget buildImage() => Image.asset(
        image,
        width: width,
        fit: BoxFit.cover,
      );

  Widget buildTitle(BuildContext context, {required String title}) => Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 0.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(color: Colors.black87),
          textAlign: TextAlign.center,
        ),
      );
}
