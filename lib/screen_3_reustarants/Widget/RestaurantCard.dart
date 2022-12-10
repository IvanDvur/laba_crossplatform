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
      this.width = 500,
      this.height = 270,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: buildImage()),
                ],
              ),
              Flexible(
                child: buildTitle(context, title: name),
              )
            ],
          ),
        ),
      );

  Widget buildImage() => Image.asset(
        image,
        width: 380,
        height: 200,
      );

  Widget buildTitle(BuildContext context, {required String title}) => Container(
        color: Colors.white,
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(color: Colors.black87),
          textAlign: TextAlign.center,
        ),
      );
}
