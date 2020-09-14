import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(_answer),
            Answer(_answer),
            Answer(_answer),
          ],
        ),
      ),
    );
  }
}
