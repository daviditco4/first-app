import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onPressed;
  final String answerText;

  Answer({this.onPressed, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: onPressed,
        color: Colors.blue,
        child: Text(answerText),
      ),
    );
  }
}
