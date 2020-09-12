import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Which music genre do you like the most?',
      'What\'s your favorite color?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answer,
            ),
          ],
        ),
      ),
    );
  }
}
