import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),
          backgroundColor: Colors.indigo,
        ),
        body: AskMeAnything(),
        backgroundColor: Colors.blue,
      ),
    ));

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int ballNumber = 1;
  Random random = new Random();

  void changeBallNumber() {
    setState(() {
      ballNumber = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: changeBallNumber,
            child: Image.asset("images/ball$ballNumber.png"),
          ),
        )
      ],
    ));
  }
}
