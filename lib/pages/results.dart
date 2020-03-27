import 'package:bmicalculator/widgets/bottom_button.dart';
import 'package:bmicalculator/components/constants.dart';
import 'package:bmicalculator/widgets/my_reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Results extends StatelessWidget {

  final String bmiResult;
  final String bmiMassage;
  final String bmiStatus;
  final Color statusColor;

  Results({@required this.bmiResult, @required this.bmiStatus, @required this.bmiMassage, @required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          //First Row Title
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultsTitleTextStyle,
              ),
            ),
          ),

          //Second Row
          Expanded(
            flex: 5,
            child: MyReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(bmiStatus.toUpperCase(), style: kResultStatusTextStyle.copyWith(color: statusColor),),
                  Text(bmiResult, style: kResultsNumberTextStyle,),
                  Text(bmiMassage, style: kResultMassageTextStyle, textAlign: TextAlign.center,),
                  FlatButton(
                    onPressed: (){
                      Share.share('Hey check this app, it calculated my BMI and is: $bmiResult\n'
                          'It also says: $bmiMassage',
                          subject: 'BMI Calculator App');
                    },
                    color: kShareButtonColor,
                    padding: EdgeInsets.all(20.0),
                    textColor: kWhiteColor,
                    child: Text('SHARE RESULT', style: kResultMassageTextStyle,),
                  ),
                ],
              ),
            ),
          ),

          //Third Row Button
          BottomButton(buttonTitle: 'RE-CALCULATE BMI',
            buttonPressed: (){ Navigator.pop(context);},
          ),
        ],
      ),
    );
  }
}