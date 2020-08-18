import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent,
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
  int leftD = 1;
  int rightD = 6;

  void roll(){
    leftD = Random().nextInt(6) + 1;
    rightD = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  roll();
                });
              },
              child: Image.asset('images/dice$leftD.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  roll();
                });
              },
              child: Image.asset('images/dice$rightD.png'),
            ),
          )
        ],
      ),
    );
  }
}
