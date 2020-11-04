import 'package:flutter/material.dart';
import 'package:quizapp/result.dart';
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
      'questionText': 'Klik op de knop om te beginnen met de quiz',
      'answers': [
        {'text': 'Cynaaal!! GO GO..  GO GO!!', 'score': 0}
      ],
    },
    {
      'questionText': 'Wat is de bijnaam van Sammy?',
      'answers': [
        {'text': 'De slang', 'score': 1},
        {'text': 'SaTan', 'score': 0},
        {'text': 'Bosklapper', 'score': 0}
      ],
    },
    {
      'questionText': 'Welke soep heeft Tony in zijn thermos?',
      'answers': [
        {'text': 'Tomatensoep', 'score': 0},
        {'text': 'Kervelsoep', 'score': 0},
        {'text': 'Netelsoep', 'score': 1}
      ],
    },
    {
      'questionText': 'Hoe noemde Alain mevr Protut aan de receptie?',
      'answers': [
        {'text': 'mevr Protut', 'score': 0},
        {'text': 'mevr Protput', 'score': 1},
        {'text': 'Lydia', 'score': 0}
      ],
    },
    {
      'questionText':
          'Van welke rockster staat er een foto op Free zijn bureau ?',
      'answers': [
        {'text': 'Bryan Adams', 'score': 0},
        {'text': 'David Bowie', 'score': 0},
        {'text': 'jimmy Hendrickx', 'score': 1}
      ],
    },
    {
      'questionText':
          'Op welk nummer ging Michel dansen op het feest van Liesje?',
      'answers': [
        {'text': 'Run to you', 'score': 1},
        {'text': 'Summer of 69', 'score': 0},
        {'text': 'OMD Elektricity', 'score': 0}
      ],
    },
    {
      'questionText': 'In welke zaal zit Ronny Roman?',
      'answers': [
        {'text': 'Vivaldizaal', 'score': 0},
        {'text': 'Sjoebertzaal', 'score': 1},
        {'text': 'Vergaderzaal', 'score': 0}
      ],
    },
    {
      'questionText': 'Hoe heet de ex van Linda ?',
      'answers': [
        {'text': 'Frank', 'score': 0},
        {'text': 'Bert', 'score': 0},
        {'text': 'Roger', 'score': 1}
      ],
    },
    {
      'questionText': 'Waarom vraagt Franky aan Alain of hij drugs neemt ?',
      'answers': [
        {'text': 'Omdat Alain bretellen aanheeft', 'score': 0},
        {'text': 'Omdat Alain een groentenburger eet ', 'score': 1},
        {'text': 'Omdat Alain zijn sloefen aan heeft', 'score': 0}
      ],
    },
    {
      'questionText': 'Wat is de bijnaam van de vader van Alain',
      'answers': [
        {'text': 'De prot', 'score': 1},
        {'text': 'Den dikke', 'score': 0},
        {'text': 'De snor', 'score': 0}
      ],
    },
    {
      'questionText': 'Wat staat er op de pet die iedereen van Bucky kreeg ?',
      'answers': [
        {'text': 'Cynalco', 'score': 0},
        {'text': 'Buckys Team', 'score': 1},
        {'text': 'Go Bucky!', 'score': 0}
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalscore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Het Eiland Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalscore, _resetQuiz)),
    );
  }
}
