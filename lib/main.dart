import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'Which music genre do you like the most?',
      'answers': [
        {'text': 'Soul', 'score': 4},
        {'text': 'Funk', 'score': 2},
        {'text': 'Rap', 'score': 1},
        {'text': 'Classic', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 2},
        {'text': 'Blue', 'score': 1},
        {'text': 'Purple', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your ideal vacation location?',
      'answers': [
        {'text': 'Beach', 'score': 3},
        {'text': 'Mountains', 'score': 2},
        {'text': 'City', 'score': 1},
        {'text': 'Cruise', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: (int score) {
                  _totalScore += score;
                  setState(() {
                    _questionIndex = _questionIndex + 1;
                  });
                },
              )
            : Result(_totalScore),
      ),
    );
  }
}
