import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;

  MySquare({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        child: Container(
          height: 200,
          color: Colors.deepPurple[100],
          child: Center(child: Text(child, style: TextStyle(fontSize: 40),),),
        ),
    );
  }
}

class MyRectangle extends StatelessWidget {
  final String child;

  MyRectangle({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 200,
        width: 370,
        decoration: BoxDecoration(
          image: DecorationImage(image: new AssetImage("lib/assets/images/Abstract 1 by Delila Ziebart on Unsplash (large).jpg.jpg"), repeat: ImageRepeat.repeat),
          borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blueAccent)
        ),
        //color: Colors.deepOrange[100],
        child: Center(child: Text(child, style: TextStyle(fontSize: 40),),),
      ),
    );
  }
}