import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0A0E21);
const scaffoldBackgroundColor = Color(0xFF0A0E21);

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

const kPinkColorTransparent = Color(0x29EB1555);
const kPinkColor = Color(0xFFEB1555);
const kGreyColor = Color(0xFF8D8E98);
const kGreyColorRoundIconButton = Color(0xFF4C4F5E);
const kWhiteColor = Color(0xFFFFFFFF);

const kLabelTextStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: kGreyColor,);
const kNumbersTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900, color: kWhiteColor);

const kBottomContainerHeight = 80.0;

const kSliderTheme = SliderThemeData(
  thumbColor: kPinkColor, overlayColor: kPinkColorTransparent, valueIndicatorColor: kPinkColor,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0,),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0,),
  activeTrackColor: kWhiteColor, inactiveTrackColor: kGreyColor,
);