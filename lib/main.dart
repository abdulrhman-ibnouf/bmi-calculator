import 'package:bmicalculator/pages/input_page.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/pages/results.dart';
import 'package:bmicalculator/components/constants.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        sliderTheme: kSliderTheme,
        textTheme: TextTheme(
          body1: kLabelTextStyle,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => InputPage(),
        'results' : (context) => Results(),
      },
    )
);
