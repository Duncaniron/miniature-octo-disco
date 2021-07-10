import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final VoidCallback select;
  final String answerText;
  Answer(this.select, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.red)),
        child: Text('Answer 1'),
        onPressed: select,
      ),
    );
  }
}
