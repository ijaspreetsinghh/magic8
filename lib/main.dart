import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask ME Anything'),
          backgroundColor: Colors.blue[800],
        ),
        backgroundColor: Colors.blue,
        body: BallPage(),
      ),
    );
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int imageVariable = 1;
  void imageChanger() {
    setState(() {
      imageVariable = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          imageChanger();
        },
        child: Image(
          image: AssetImage('images/ball$imageVariable.png'),
        ),
      ),
    );
  }
}
