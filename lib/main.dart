import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      {
        'question': 'Do you like Cats?',
        'answers': [
          'Yes',
          'Most Likely',
          'Komu na',
          'No',
        ]
      },
      {
        'question': 'Do you like Dogs?',
        'answers': [
          'Yes',
          'Most Likely',
          'Komu na',
          'No',
        ]
      },
      {
        'question': 'Do you like Biriyani?',
        'answers': [
          'Yes',
          'Most Likely',
          'Komu na',
          'No',
        ]
      },
      {
        'question': 'Do you like Shutki?',
        'answers': [
          'Yes',
          'Most Likely',
          'Komu na',
          'No',
        ]
      },
      {
        'question': 'Do you like Vegetables?',
        'answers': [
          'Yes',
          'Most Likely',
          'Jani na',
          'No',
        ]
      },
      {
        'question': 'Are you a Vegan?',
        'answers': [
          'Yes',
          'Most Likely',
          'I love Kobe Beef',
          'No',
        ]
      },
      {
        'question': 'Do you like Meat?',
        'answers': [
          'Yes',
          'Most Likely',
          'Komu na',
          'No',
        ]
      },
      {
        'question': 'Are you Gay?',
        'answers': [
          'Yes',
          'Most Likely',
          'Tor Nani Gay',
          'No',
        ]
      },
      {
        'question': 'Are you the Picchimagi?',
        'answers': [
          'Yes',
          'Most Likely',
          'Tui magi',
          'No',
        ]
      },
      {
        'question': 'Are you Badbuzz?',
        'answers': [
          'Yes',
          'Most Likely',
          'Tre Kn Komu ?',
          'No',
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello! First')),
        body: Column(children: [
          Question(
            questions[_questionIndex]['question'],
          ),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
