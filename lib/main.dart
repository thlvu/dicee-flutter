import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static const int minNumber = 1;
  static const int maxNumber = 6;
  static int getRandomInt(int min, int max) => Random().nextInt(max - min + 1) + min;

  int leftDiceNumber = getRandomInt(minNumber, maxNumber);
  int rightDiceNumber = getRandomInt(minNumber, maxNumber);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = getRandomInt(minNumber, maxNumber);
                  rightDiceNumber = getRandomInt(minNumber, maxNumber);
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = getRandomInt(minNumber, maxNumber);
                  rightDiceNumber = getRandomInt(minNumber, maxNumber);
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
