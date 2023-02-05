import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  var resPic = 0;
  final List imgList = [
    Image.asset('asset/images/fresh.jpg'),
    Image.asset('asset/images/cool.jpg'),
    Image.asset('asset/images/gloomy.jpg'),
  ];

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;
    if (resultScore <= 0) {
      resPic = 1;
      resultText = 'You Have a very Dark and Gloomy Mind';
    } else if (resultScore <= 20) {
      resPic = 2;
      resultText = 'You Have a Very Simple Mind';
    } else {
      resPic = 3;
      resultText = 'You Have a very Fresh and colorful Mind';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 300,
            height: 300,
            child: imgList[resPic],
          ),
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            onPressed: resetHandler,
            child: Text('Restart!'),
            style: OutlinedButton.styleFrom(
              minimumSize: Size(200, 35),
              padding: EdgeInsets.all(5),
              side: BorderSide(color: Color.fromARGB(196, 207, 61, 61)),
              foregroundColor: Color.fromARGB(196, 207, 61, 61),
            ),
          ),
        ],
      ),
    );
  }
}
