import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {

  final Color color;
  final Widget cardChild;
  MyCustomContainer ({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration( color: color,
        borderRadius: BorderRadius.circular(15.0),),
    );
  }
}