import 'package:flutter/material.dart';

import './question.dart';
import './Answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  List toprint = [];

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print('answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    List question = [
      {
        1: 'what\'s your favorite color ?',
        'answers': ['Red', 'Balck', 'White']
      },
      {
        1: 'your age?',
        'answers': ['10', '20', '30']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app bar'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex][1]),
            ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int i) {
                  print(i);
                  return ListTile(
                      title: RawMaterialButton(
                    child: Text('$i'),
                    fillColor: Colors.lightGreen,
                    onPressed: null,
                  ));
                }),
          ],
        ),
      ),
    );
  }
}
