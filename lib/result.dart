import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;

  Result({this.finalScore, this.resetQuiz});

  String get resultText {
    if (finalScore <= 3)
      return 'You suck...';
    else if (finalScore <= 5)
      return 'Your taste is mediocre.';
    else if (finalScore <= 7)
      return 'You have a good taste';
    else if (finalScore <= 9)
      return 'Your taste is very good!';
    else
      return 'You are amazing!!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetQuiz,
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
