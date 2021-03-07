import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // means we will use a function over here.
  final Function selectHnadler;
  final String answerText;
  Answer(this.selectHnadler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHnadler,
      ),
    );
  }
}
