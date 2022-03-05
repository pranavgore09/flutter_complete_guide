import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var questions = [
    {
      'qText': 'What is your fav Colour?',
      'ans': [
        {'text': 'Black', 'score': 1},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'qText': 'What is your fav Animal?',
      'ans': [
        {'text': 'Tiger', 'score': 1},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Goat', 'score': 3},
        {'text': 'Lion', 'score': 4},
      ],
    },
    {
      'qText': 'What is your fav Sport?',
      'ans': [
        {'text': 'Football', 'score': 1},
        {'text': 'Cricket', 'score': 2},
        {'text': 'Baseball', 'score': 3},
      ],
    },
  ];

  void _ansBtnPress(int score) {
    _totalScore += score;
    setState(() {
      this._questionIndex = this._questionIndex + 1;
    });
    print("Yo, clicked");
  }

  void _resetQuiz() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      body: _questionIndex < questions.length
          ? Quiz(_ansBtnPress, questions[_questionIndex]['qText'],
              questions[_questionIndex]['ans'])
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
