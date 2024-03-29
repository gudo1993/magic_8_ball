import 'dart:math';
import 'package:flutter/material.dart';

void main() => (runApp(
      MaterialApp(
        home: BallPage(),
      ),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything!'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int hitBall = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              hitBall = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$hitBall.png'),
        ),
      ),
    );
  }
}
