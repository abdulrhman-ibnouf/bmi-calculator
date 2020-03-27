import 'package:bmicalculator/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/components/constants.dart';

class MyCustomColumn extends StatelessWidget {

  final String columnTitle;
  final int columnNumber;
  final Function minusOne;
  final Function plusOne;
  MyCustomColumn({this.columnTitle, this.columnNumber, this.minusOne, this.plusOne});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(columnTitle,),
        Text(columnNumber.toString(), style: kNumbersTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(roundIcon: Icon(Icons.remove),plusOrMinus: minusOne,),
            SizedBox(width: 10.0,),
            RoundIconButton(roundIcon: Icon(Icons.add),plusOrMinus: plusOne,),
          ],
        ),
      ],
    );
  }
}
