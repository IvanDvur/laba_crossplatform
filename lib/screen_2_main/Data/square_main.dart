import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySquare extends StatelessWidget {
  final String child;
  final String childIcon;

  MySquare({required this.child, required this.childIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            alignment: Alignment.bottomLeft,
            height: 200,
            // color: Colors.deepPurple[100],
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage(childIcon),
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.lightBlue, width: 2)),
            child: Container(
              margin: EdgeInsets.only(
                left: 13,
              ),
              child: Text(
                child,
                style: GoogleFonts.sarala(fontSize: 25),
              ),
            )),
      ),
    );
  }
}

class MyRectangle extends StatelessWidget {
  final String child;
  final String childIcon;

  MyRectangle({required this.child, required this.childIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          alignment: Alignment.bottomLeft,
          clipBehavior: Clip.hardEdge,
          height: 200,
          width: 370,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: new AssetImage(childIcon), repeat: ImageRepeat.repeat),
            borderRadius: BorderRadius.circular(20),
            // border: Border.all(color: Colors.blueAccent),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          //color: Colors.deepOrange[100],
          child: Text(
            child,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
