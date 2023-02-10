import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What is your Favourite natural element?',
      'answers': [
        {'text': 'Air', 'score': 8},
        {'text': 'Water', 'score': 9},
        {'text': 'Earth', 'score': 6},
        {'text': 'Dark', 'score': -10},
        {'text': 'Wood', 'score': 7},
        {'text': 'light', 'score': 10},
      ]
    },
    {
      'question': 'What colors do you like?',
      'answers': [
        {'text': 'Red', 'score': 4},
        {'text': 'Blue', 'score': 8},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 9},
        {'text': 'Black', 'score': -9},
      ]
    },
    {
      'question': 'I Like Biryani.',
      'answers': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree', 'score': 7},
        {'text': 'Neutral', 'score': 5},
        {'text': 'Disagree', 'score': 1},
        {'text': 'Strongly Disagree', 'score': -10},
      ]
    },
    {
      'question': 'Do you like Knowledge?',
      'answers': [
        {'text': 'Yes', 'score': 9},
        {'text': 'Most Likely', 'score': 5},
        {'text': 'No', 'score': 0},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Test of you Mind!!'), // * Name in the AppBar
          backgroundColor: Color.fromARGB(196, 207, 61, 61),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
