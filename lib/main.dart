import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Dashboard.dart';

//main function, starting point for the flutter app
void main() => runApp(myApp());
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),),
        ),
      ),
    );
  }
}



class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _myAppState();
}

class _myAppState extends State<QuizPage> {
  int questionNumber = 0;
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Text(questions[questionNumber],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                setState(() {
                  questionNumber++;
                });
              },
              child: Text(
                "True",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () {
                setState(() {
                  questionNumber++;
                });
              },
              child: Text(
                "False",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Row(

        )
      ],
    );
  }
}

