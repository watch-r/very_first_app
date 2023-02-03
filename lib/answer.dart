import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answer),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(200, 35),
          padding: EdgeInsets.all(5),
          backgroundColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
