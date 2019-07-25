import 'package:flutter/material.dart';
import 'package:flutter_basics/question.dart';
import 'package:flutter_basics/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answareQuestion;

  Quiz(
      {@required this.questions,
      @required this.answareQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answareQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
