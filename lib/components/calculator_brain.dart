import 'dart:math';
import 'dart:ui';

import 'package:bmicalculator/components/constants.dart';

class CalculatorBrain {

  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight,});

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height/100), 2);
    return (_bmi).toStringAsFixed(1);
  }

  String statusBMI() {
    if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return 'Normal';
    } else if (_bmi >= 25.0 && _bmi < 29.9) {
      return 'Overweight';
    } else if (_bmi >= 30.0 && _bmi < 34.9) {
      return 'Obese Class I';
    } else if (_bmi >= 35.0 && _bmi < 39.9) {
      return 'Obese Class II';
    } else if (_bmi >= 40.0) {
      return 'Obese Class III';
    } else {
      return 'Opps!! something went wronge';
    }
  }


  String massageBMI() {
    if (_bmi < 18.5) {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi >= 25.0 && _bmi < 29.9) {
      return 'You have a higher than normal body weight. \nTry to exercise more and some control on diet will be helpful.';
    } else if (_bmi >= 30.0 && _bmi < 34.9) {
      return 'You have a higher than normal body weight. \nTry to exercise more and REVIEW a physician';
    } else if (_bmi >= 35.0 && _bmi < 39.9) {
      return 'You have a higher than normal body weight. \nTry to exercise more and REVIEW a physician seriously';
    } else if (_bmi >= 40.0) {
      return 'You have a higher than normal body weight. \nWhoow, I wonder if can you catch up your breath!';
    } else {
      return 'Opps!! something went wronge';
    }
  }

  Color statusBMIColor (){
    if (_bmi < 18.5) {
        return kStatusColorUnderweight;
      } else if (_bmi >= 18.5 && _bmi < 24.9) {
        return kStatusColorNormal;
      } else if (_bmi >= 25.0 && _bmi < 29.9) {
        return kStatusColorOverweight;
      } else if (_bmi >= 30.0 && _bmi < 34.9) {
        return kStatusColorObese1;
      } else if (_bmi >= 35.0 && _bmi < 39.9) {
        return kStatusColorObese2;
      } else if (_bmi >= 40.0) {
        return kStatusColorObese3;
      } else {
        return kPinkColor;
      }
  }

}