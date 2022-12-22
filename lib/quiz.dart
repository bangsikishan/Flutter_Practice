import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;

  const Quiz(this.answerQuestion, this.questionIndex, this.questions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions.elementAt(questionIndex)['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
