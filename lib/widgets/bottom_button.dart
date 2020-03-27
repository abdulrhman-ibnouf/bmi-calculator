import 'package:flutter/material.dart';
import 'package:bmicalculator/components/constants.dart';

class BottomButton extends StatelessWidget {

  final String buttonTitle;
  final Function buttonPressed;
  BottomButton ({@required this.buttonTitle, @required this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonPressed,
      child: Container(
        color: kPinkColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}