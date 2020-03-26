import 'package:flutter/material.dart';
import 'package:bmicalculator/input_page.dart';
import 'package:bmicalculator/widgets/constants.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        sliderTheme: kSliderTheme,
        textTheme: TextTheme(body1: kLabelTextStyle,),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 8.0,
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: InputPage(),
      ),
    ));
