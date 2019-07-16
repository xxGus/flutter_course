import 'package:flutter/material.dart';
import 'package:flutter_basics/question.dart';

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
          Question(
            questions[_questionIndex],
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answareQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answareQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: _answareQuestion,
          )
        ],
      ),
    ));
  }
}
