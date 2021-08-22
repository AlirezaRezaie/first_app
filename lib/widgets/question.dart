import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;
  Question(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        text,
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }
}
