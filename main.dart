import 'package:first_app/result.dart';
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
    // map {}
    {
      'questionText': 'What\'s your favorite metal?',
      'answers': ['Gold', 'Silver', 'Platinum'],
    },
    {
      'questionText': 'What\'s your favorite drink?',
      'answers': ['Vodka', 'Gin', 'Rum', 'Brandy'],
    },
    {
      'questionText': 'What\'s your favorite car?',
      'answers': ['Benz', 'Bmw', 'Audi'],
    },
  ];

  var _qIdx = 0;

  void _answerQuestion() {
    setState(() {
      _qIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text('Hello'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _qIdx < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                qIdx: _qIdx,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
