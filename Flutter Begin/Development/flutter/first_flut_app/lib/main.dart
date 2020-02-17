import 'package:first_flut_app/answer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';

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

  var questions = [
    {
      'questionText': 'Which programming language do you like ?',
      'answers': ['Java', 'Dart', 'Kotlin', 'Javascript']
    },
    {
      'questionText': 'Who\'s your fav cricket player ',
      'answers': ['Raina', 'Dhoni', 'Kholi', 'Yuvi']
    },
    {
      'questionText': 'Who\'s your fav hero',
      'answers': ['Vijay', 'Ajith', 'Karthi']
    }
  ];

  void answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(
                ansPressed: this.answerQuestions,
                answerText: answer,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
