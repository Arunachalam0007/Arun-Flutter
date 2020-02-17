import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //Class Variables
  final String questionText;

  //Constructor
  Question(this.questionText);

//This will call when the Question widget is using or creating object
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 50),
        textAlign: TextAlign.center,
      ),
    );
  }
}
