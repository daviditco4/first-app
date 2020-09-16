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
      'answers': ['Soul', 'Funk', 'Rap', 'Classic'],
    },
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Green', 'Yellow', 'Blue', 'Purple'],
    },
    {
      'questionText': 'What\'s your ideal vacation location?',
      'answers': ['Beach', 'Mountains', 'City', 'Cruise'],
    },
  ];

  var _questionIndex = 0;

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
                answerQuestion: () {
                  setState(() {
                    _questionIndex = _questionIndex + 1;
                  });
                },
              )
            : Result(),
      ),
    );
  }
}
