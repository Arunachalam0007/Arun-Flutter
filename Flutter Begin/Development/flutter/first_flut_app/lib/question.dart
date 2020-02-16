import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  // var questions = [
  //   'Do u like Cricket ?',
  //   'Do u like Football ?',
  //   'Do u like Tennis ?'
  // ];

  String questionText ;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}