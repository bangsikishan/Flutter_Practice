import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
              Text(questions.elementAt(questionIndex)),
              ElevatedButton(
                onPressed: () => answerQuestion(),
                child: const Text("Answer 1"),
              ),
              ElevatedButton(
                onPressed: () => answerQuestion(),
                child: const Text("Answer 2"),
              ),
              ElevatedButton(
                onPressed: () => answerQuestion(),
                child: const Text("Answer 3"),
              ),
            ],
          )),
    );
  }
}
