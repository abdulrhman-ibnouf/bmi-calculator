import 'package:bmicalculator/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
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
