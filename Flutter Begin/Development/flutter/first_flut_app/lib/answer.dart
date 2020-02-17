import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function ansPressed; // lifting the method state from parend
  Answer(
      {this.ansPressed,
      this.answerText}); // constructor to pass the answer method to function variable.

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(fontSize: 30),
        ),
        color: Colors.blue,
        textColor: Colors.red,
        onPressed: ansPressed,
      ),
    );
  }
}
