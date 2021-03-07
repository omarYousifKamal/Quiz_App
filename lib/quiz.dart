import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quetionsIndex;
  final Function answerQuetion;
  Quiz(
      {@required this.questions,
      @required this.answerQuetion,
      @required this.quetionsIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quetionsIndex]['questionText'],
        ),
        //multiplee widget objects
        // passing a pointer ts
        ...(questions[quetionsIndex]['answers'] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(() => answerQuetion(answer['score']), answer['text']);
          },
        ).toList()
      ],
    );
  }
}
