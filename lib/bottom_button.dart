import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({
    @required this.labelText,
    @required this.onTap,
  });

  final Function onTap;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            labelText,
            style: kLargeButtonTextStyle,
            // textAlign: TextAlign.center,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: Color(0xFFEB1555),
      ),
    );
  }
}
