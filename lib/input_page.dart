import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const lableTextStyle = TextStyle(fontSize: 18.0, color: Color(0xFF8D8E96));

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  /*
  Container buildContainer() {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
    */

  Widget _buildGender(IconData icon, String gender) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(gender, style: lableTextStyle)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        elevation: 4,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    cardChild: _buildGender(FontAwesomeIcons.mars, 'MALE'),
                    colour: containerColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    cardChild: _buildGender(FontAwesomeIcons.venus, 'FEMALE'),
                    colour: containerColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: containerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: containerColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: containerColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
            color: Color(0xFFEB1555),
          )
        ],
      ),
    );
  }
}
