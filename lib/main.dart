import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Rabbit', 'Snake', 'Dog', 'Cat']
    },
    {
      'questionText': "What's your favorite instructor?",
      'answers': ['Max', 'Dave', 'Ajax', 'David']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My First App",
            ),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questionIndex, _questions)
              : const Result()
      )
    );
  }
}
