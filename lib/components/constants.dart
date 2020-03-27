import 'package:flutter/material.dart';

const primaryColor = Color(0xFF0A0E21);
const scaffoldBackgroundColor = Color(0xFF0A0E21);

const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);

const kPinkColorTransparent = Color(0x29EB1555);
const kPinkColor = Color(0xFFEB1555);
const kGreyColor = Color(0xFF8D8E98);
const kGreyColorRoundIconButton = Color(0xFF4C4F5E);
const kShareButtonColor = Color(0xFF181A2E);

const kWhiteColor = Color(0xFFFFFFFF);
//Status Colors
const kStatusColorUnderweight = Color(0XFF4D98CF);
const kStatusColorNormal = Color(0XFF21D675);
const kStatusColorOverweight = Color(0XFFF6961D);
const kStatusColorObese1 = Color(0XFFF15B28);
const kStatusColorObese2 = Color(0XFFEC1A37);
const kStatusColorObese3 = Color(0XFFEC1A37);


const kBottomContainerHeight = 80.0;

const kLabelTextStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal, color: kGreyColor,);
const kNumbersTextStyle = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900, color: kWhiteColor,);
const kLargeButtonTextStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: kWhiteColor,);
const kResultsTitleTextStyle = TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: kWhiteColor,);
const kResultStatusTextStyle = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold,);
const kResultsNumberTextStyle = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold, color: kWhiteColor,);
const kResultMassageTextStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: kWhiteColor,);


const kSliderTheme = SliderThemeData(
  thumbColor: kPinkColor, overlayColor: kPinkColorTransparent, valueIndicatorColor: kPinkColor,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0,),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0,),
  activeTrackColor: kWhiteColor, inactiveTrackColor: kGreyColor,
);