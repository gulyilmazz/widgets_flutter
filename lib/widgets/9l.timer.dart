import 'dart:async';
import 'package:flutter/material.dart';

class MyWidget9m extends StatefulWidget {
  const MyWidget9m({super.key});

  @override
  State<MyWidget9m> createState() => _MyWidget9mState();
}

class _MyWidget9mState extends State<MyWidget9m> {
  //variables
  int timeLeft = 5;

  //time method
  void _startCountDown() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeLeft == 0 ? 'Done' : timeLeft.toString(),
              style: TextStyle(fontSize: 70),
            ),
            MaterialButton(
              onPressed: _startCountDown,
              child: Text('S T A R T', style: TextStyle(color: Colors.white)),
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
