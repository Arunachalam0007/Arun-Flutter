import './question.dart';
import './answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  Quiz({this.questionIndex, this.questions, this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        //Spread Operator
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(
            ansPressed: () => answerQuestions (answer['score']),
            answerText: answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
