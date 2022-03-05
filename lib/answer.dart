import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerStr;
  final Function callback;

  Answer(this.answerStr, this.callback);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Color.fromARGB(255, 32, 114, 182),
        textColor: Colors.white,
        child: Text(answerStr),
        onPressed: callback,
      ),
    );
  }
}
