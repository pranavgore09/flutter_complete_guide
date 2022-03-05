import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String qText;
  final Function actionFunc;
  final List<Map<String, Object>> ansList;

  Quiz(this.actionFunc, this.qText, this.ansList);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(this.qText),
        ...(this.ansList).map(
          (answer) {
            return Answer(
                answer['text'] as String, () => actionFunc(answer['score']));
          },
        ).toList(),
      ],
    );
  }
}
