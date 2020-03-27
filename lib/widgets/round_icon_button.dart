import 'package:bmicalculator/components/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {

  final Function plusOrMinus;
  final Icon roundIcon;
  RoundIconButton({this.roundIcon, this.plusOrMinus});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: plusOrMinus,
      child: roundIcon,
      fillColor: kGreyColorRoundIconButton,
      textStyle: kNumbersTextStyle,
      shape: CircleBorder(),
      elevation: 8.0, disabledElevation: 8.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
