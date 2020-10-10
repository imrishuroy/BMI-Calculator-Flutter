import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bottom_button.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.backward),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            // child: Container(
            //   margin: EdgeInsets.all(20),
            //   // padding: EdgeInsets.all(12),
            //   color: Color(0xFF1D1E33),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       // Expanded(child: null),
            //       Text(
            //         'OVERWEIGHT',
            //         style: TextStyle(
            //           fontSize: 22,
            //           color: Colors.greenAccent,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Text(
            //         '30.9',
            //         style: TextStyle(
            //           fontWeight: FontWeight.w900,
            //           fontSize: 80,
            //         ),
            //       ),
            //       Text(
            //         'You are very fat have to work on your fittness and go to gym',
            //         style: TextStyle(
            //           fontSize: 22,
            //         ),
            //         textAlign: TextAlign.center,
            //       )
            //     ],
            //   ),
            // ),
            child: ReuseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OVERWEIGHT',
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.9',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your bmi is to high, eat less and do exercise, stay happy',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              labelText: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
