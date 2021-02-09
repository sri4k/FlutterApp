import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIdx;
  final Function answerQuestion;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.qIdx});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIdx]['questionText'],
        ),
        ...(questions[qIdx]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
