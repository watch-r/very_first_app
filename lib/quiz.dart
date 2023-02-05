import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  final List imgList = [
    Image.asset('asset/images/five.jpg'),
    Image.asset('asset/images/colors.jpg'),
    Image.asset('asset/images/biryani.jpg'),
    Image.asset('asset/images/knowledge.jpg'),

  ];

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 300,
        height: 300,
        child: imgList[questionIndex],
      ),
      Question(
        questions[questionIndex]['question'] as String,
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
