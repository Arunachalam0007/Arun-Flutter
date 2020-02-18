import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  // It's a normal method written by flutter team ,This will render the widget or class to the application.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  int _answerScore = 0;

  var questions = [
    {
      'questionText': 'Which programming language do you like ?',
      'answers': [
        {'text': 'Java', 'score': 10},
        {'text': 'Dart', 'score': 10},
        {'text': 'Kotlin', 'score': 5},
        {'text': 'Javascript', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your fav cricket player ',
      'answers': [
        {'text': 'Raina', 'score': 10},
        {'text': 'Dhoni', 'score': 10},
        {'text': 'Kholi', 'score': 5},
        {'text': 'Yuvi', 'score': 8}
      ]
    },
    {
      'questionText': 'Who\'s your fav hero',
      'answers': [
        {'text': 'Vijay', 'score': 10},
        {'text': 'Ajith', 'score': 10},
        {'text': 'Karthi', 'score': 8}
      ]
    }
  ];

  void answerQuestions(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _answerScore += score;
    });
    print('Your Total Score: ' +
        _answerScore.toString());
    print(_questionIndex.toString() +
        ' ' +
        questions[_questionIndex]['questionText']);
  }

  @override
  Widget build(BuildContext context) {
    // Build is a abstract method
    // Context -->It's a special type of object, It’s used to store the metadata info of app or widget,Flutter will call the whenever need to draw.
    // TODO: implement build
    // MaterialApp --> It's a Widget or Instance/object of the MaterialApp from Flutter Material.dart file
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sha Demo App'),
        ),
        // body: Text('Welcome Back to Scaffold Default Flutter Template'),
        body: _questionIndex < questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: questions,
                answerQuestions: answerQuestions)
            : Finalpage(),
      ),
    );
  }
}
