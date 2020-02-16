import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // It's a normal method written by flutter team ,This will render the widget or class to the application.
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    'Do u like Cricket ?',
    'Do u like Football ?',
    'Do u like Tennis ?'
  ];

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex.toString() + ' ' + questions[questionIndex]);
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
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Question 1'),
              onPressed: () {
                print("Yes....");
              },
            ),
            RaisedButton(
              child: Text('Question 2'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Question 3'),
              onPressed: answerQuestions,
            )
          ],
        ),
      ),
    );
  }
}
