import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHeldler;
  final String answerText;
  Answer(this.selectHeldler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          child: Text(answerText),
          onPressed: selectHeldler,
        ));
  }
}
