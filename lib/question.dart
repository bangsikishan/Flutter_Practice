import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
