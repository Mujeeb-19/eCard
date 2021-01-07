import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cards extends StatelessWidget {
  final IconData icon;
  final String name;
  final VoidCallback onPressed;
  Cards({this.icon, this.name, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          leading: Icon(
            icon,
          ),
          title: FlatButton(
            child: Text(name,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.1,
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro'),
            ),
            onPressed:onPressed
            
          ),
        ),
      ),
    );
  }
}
