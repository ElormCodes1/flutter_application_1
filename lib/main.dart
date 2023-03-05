import 'dart:developer';

import 'package:flutter/material.dart';
import 'questions.dart';

//main function, starting point for the flutter app
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _MyAppState();
}

class _MyAppState extends State<QuizPage> {
  int questionNumber = 0;
  List<Question> questionBank = [
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true)
  ];

  bool something = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              questionBank[questionNumber].questionText ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer ?? false;
                if (correctAnswer == true) {
                  log('User got it right!');
                } else {
                  log('User got it wrong');
                }
                setState(() {
                  questionNumber++;
                });
              },
              child: const Text(
                "True",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer ?? false;
                if (correctAnswer == true) {
                  log('User got it right!');
                } else {
                  log('User got it wrong');
                }
                setState(() {
                  questionNumber++;
                });
                setState(() {
                  questionNumber++;
                });
              },
              child: Text(
                something.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Row()
      ],
    );
  }
}
