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
              ),
              Expanded(child: buildImage())
            ],
          ),
        ),
      );

  Widget buildTitle(BuildContext context, {required String title}) => Container(
        color: Colors.grey,
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black87),
          textAlign: TextAlign.center,
        ),
      );

  Widget buildImage() => Image.asset(
        image,
        width: width,
        fit: BoxFit.cover,
      );
}
