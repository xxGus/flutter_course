import 'package:flutter/material.dart';

import 'package:flutter_basics/question.dart';
import 'package:flutter_basics/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answareQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Question!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Green', 'White']
      },
       
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['Rabbit', 'Tiger', 'Lion', 'Snake']
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(
            questions[_questionIndex]['questionText'],
          ),
          ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
            return Answer(_answareQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
