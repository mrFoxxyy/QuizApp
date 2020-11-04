import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Afronden alain, afronden.';

    if (resultScore <= 5) {
      resultText = 'komaan he Guido, HERPAKT U!';
    } else if (resultScore >= 6) {
      resultText = 'Hey Alain, Dikken bal!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            resultScore.toString() + '/10',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Probeer opnieuw'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
