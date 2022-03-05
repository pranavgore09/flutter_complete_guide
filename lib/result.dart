import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetQuiz;

  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    var resultText = 'Done it!';
    if (score > 6) {
      resultText = "You are Great";
    } else if (score > 4) {
      resultText = "You are Better";
    } else if (score > 3) {
      resultText = "You are Good";
    } else {
      resultText = "Hmm!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: this.resetQuiz,
          child: Text('Restart Quiz'),
          textColor: Colors.orange,
        )
      ],
    ));
  }
}
