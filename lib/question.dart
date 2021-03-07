import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // tells dart that this value won't change after instaling
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
// the good part of having different parts is you will deacrease teh amount of code in teh main file
