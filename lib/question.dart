import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionStr;

  Question(this.questionStr);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionStr,
        style: TextStyle(fontSize: 38),
        textAlign: TextAlign.center,
      ),
    );
  }
}
