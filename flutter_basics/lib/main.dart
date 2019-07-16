import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answareQuestion() {
    questionIndex = questionIndex + 1;
    print('Answer Question!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text(
            questions[questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answareQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: answareQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: answareQuestion,
          )
        ],
      ),
    ));
  }
}