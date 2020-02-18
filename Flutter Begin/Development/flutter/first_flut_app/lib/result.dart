import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;

  final Function resetQuiz;

  String get myResultOfScore {
    var resultText = 'You are Really Awesome !!!';

    if (finalScore == 30) {
      resultText = resultText;
      return resultText;
    } else if (finalScore >= 28) {
      resultText = '.......Good........';
      return resultText;
    } else if (finalScore >= 24) {
      resultText = '.......Not BAD........ Your Score:' + finalScore.toString();
      return resultText;
    }
    return 'Your Not up to the Mark';
  }

  Result({this.finalScore, this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        myResultOfScore,
        style: TextStyle(fontSize: 33, color: Colors.green),
      ),
      Text(
        'Wowww You Did it !!!!!!!!',
        style: TextStyle(
            fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
      ),
      RaisedButton(
        onPressed: resetQuiz,
        child: Text('Reset Quiz'),
        color: Colors.indigo,
      )
    ]);
  }
}
