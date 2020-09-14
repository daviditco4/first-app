import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _handlePressed;

  Answer(this._handlePressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: _handlePressed,
        color: Colors.blue,
        child: Text('Answer'),
      ),
    );
  }
}
