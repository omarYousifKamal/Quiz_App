import 'package:flutter/material.dart';
// import the qustion widget
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// to inform dart taht my appState class should be only accessed inside the MyappClass we can make it private we add _
// here myappstate is private
class MyAppState extends State<MyApp> {
  var quetionsIndex = 0;
  final _questions = [
    {
      'questionText': 'whart\'s your faorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'green', 'score': 3},
        {'text': 'white', 'score': 1},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'snake', 'score': 4},
        {'text': 'Elephant', 'score': 7},
        {'text': 'Lion', 'score': 10},
      ]
    },
    {
      'questionText': 'what\'s your favorite instractor',
      'answers': [
        {'text': 'max', 'score': 10},
        {'text': 'sura', 'score': 6},
        {'text': 'mora', 'score': 3},
        {'text': 'lura', 'score': 1},
      ]
    }
  ];
  // String get answer => null;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuetion(int score) {
    _totalScore = _totalScore + score;
    if (quetionsIndex < _questions.length) {
      print('We have more quetuions');
    } else {
      print('no more');
    }
//set state forces f    lutter to render the chosen widget
//again not every single pixle only the chosen one that you want to redraw
    setState(() {
      quetionsIndex = quetionsIndex + 1;
    });
    print(quetionsIndex);
  }

  @override
  Widget build(BuildContext context) {
    // we can't access it from other places
    // var quetions = [
    //   'what\'s your favorate color?',
    //   'and waht\'s your favorite animal',
    //   'and waht\'s your favorite sura',
    // ];
    // we can use a map rather tahn a list

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          centerTitle: true,
        ),
        body: quetionsIndex < _questions.length
            ? Quiz(
                answerQuetion: answerQuetion,
                quetionsIndex: quetionsIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
// extensions addes :
/*
tabout
pubspec assest
awesome flutter snippits
*/
//maps are confucing ????????
