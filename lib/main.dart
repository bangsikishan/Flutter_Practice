import 'package:flutter/material.dart';
import './question.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My First App",
            ),
          ),
          body: Column(
            children: [
              Question(questions.elementAt(_questionIndex)),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.green[700])),
                onPressed: () => _answerQuestion(),
                child: const Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: () => _answerQuestion(),
                child: const Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: () => _answerQuestion(),
                child: const Text("Answer 3"),
              ),
            ],
          )),
    );
  }
}