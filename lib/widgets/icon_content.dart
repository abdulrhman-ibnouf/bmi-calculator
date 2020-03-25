import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  final IconData icon;
  final String label;
  IconContent ({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon( icon, size: 80.0,),
        SizedBox(height: 15,),
        Text( label, style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0, fontWeight: FontWeight.normal,),),
      ],
    );
  }
}