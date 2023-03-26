import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue,
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int leftBall = 1;

  void changeBall() {
    setState(() {
      leftBall = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/ball$leftBall.png'),
              onPressed: () {
              changeBall();
              },
            ),
          ),
        ],
      ),
    );
  }
}




