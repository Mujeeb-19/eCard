import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Circles extends StatelessWidget {
  final IconData iconz;
  final Color color;
  final VoidCallback url;
  
  Circles({this.iconz, this.color, this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        shape: CircleBorder(),
        color: Colors.black,
        child: Icon(
          iconz, 
          color: color, 
          size: 30,
        ),
        onPressed: url,
      ),
    );
  }
}
