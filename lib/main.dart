import 'package:flutter/material.dart';
import 'questions.dart';
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
  List<Question> questionBank = [
  Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
  Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
  Question(q: 'A slug\'s blood is green.', a: true)
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
            child: Text(questionBank[questionNumber].questionText,
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
                bool correctAnswer = questionBank[questionNumber].questionAnswer;
                if(correctAnswer == true){
                  print('User got it right!');
                }else{
                  print('User got it wrong');
                }
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
                bool correctAnswer = questionBank[questionNumber].questionAnswer;
                if(correctAnswer == true){
                  print('User got it right!');
                }else{
                  print('User got it wrong');
                }
                setState(() {
                  questionNumber++;
                });
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

