import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/widgets/my_reusable_card.dart';
import 'package:bmicalculator/widgets/icon_content.dart';
import 'package:bmicalculator/widgets/my_column.dart';
import 'package:bmicalculator/widgets/constants.dart';

enum Gender {female, male,}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[

        //First Row
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: MyReusableCard(
                  onPress: (){setState(() {
                    selectedGender = Gender.female;
                  });},
                  color: selectedGender == Gender.female ? kActiveCardColor: kInactiveCardColor,
                  cardChild: IconContent( icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                ),
              ),
              Expanded(
                flex: 1,
                child: MyReusableCard(
                  onPress: (){setState(() {
                    selectedGender = Gender.male;
                  });},
                  color: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
            ],
          ),
        ),

        //Second Row: Container
        Expanded(
          flex: 2,
          child: MyReusableCard(
            color: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('HEIGHT',),
                Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.baseline, textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Text(height.toString(), style: kNumbersTextStyle,),
                    Text('cm',)
                  ],),
                Slider(
                  min: 100, max: 220,
//                divisions: 120,
                  value: height.toDouble(), label: '$height',
                  onChanged: (double newValue){
                    setState(() {
                      height = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
        ),

        //Third Row
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: MyReusableCard(
                  color: kActiveCardColor,
                  cardChild: MyCustomColumn(
                    columnTitle: 'WEIGHT', columnNumber: weight,
                    minusOne: () {
                      setState(() {
                        weight--;
                      });
                    },
                    plusOne: () {
                      setState(() {
                        weight++;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: MyReusableCard(
                  color: kActiveCardColor,
                  cardChild: MyCustomColumn(
                    columnTitle: 'AGE', columnNumber: age,
                    minusOne: () {
                      setState(() {
                        age--;
                      });
                    },
                    plusOne: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),

        //Forth Row: Bottom
        Expanded(
          flex: 1,
          child: Container(
            color: kPinkColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ),
      ],
    );
  }
}
