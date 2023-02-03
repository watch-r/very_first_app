import 'package:flutter/material.dart';

import './question.dart';

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
      'Wanna Sex?',
      'How old are you?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello! First')),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Yes'),
          ),
          ElevatedButton(
            onPressed: () => print('Answer 3'),
            child: Text('Ou Yea'),
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: Text('Ho Ow'),
          )
        ]),
      ),
    );
  }
}
