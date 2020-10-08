import 'package:flutter/material.dart';

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
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF1D1E33),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({
    @required this.colour,
  });

  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
