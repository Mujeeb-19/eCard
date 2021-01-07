import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Texts extends StatelessWidget {
  final String namee;
  final FontStyle fontt;
  final Color colour;

  Texts({this.namee, this.fontt, this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        namee,
        style: TextStyle(
          fontStyle: fontt, fontFamily: 'Pacifico',
          fontSize: 25.0,
          color: colour,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
