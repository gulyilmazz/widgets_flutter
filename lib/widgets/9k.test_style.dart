import 'package:flutter/material.dart';

class MyWidget9l extends StatelessWidget {
  final pinkFont = TextStyle(
    fontSize: 50,
    color: const Color.fromARGB(255, 214, 47, 103),
    fontStyle: FontStyle.italic,
  );
  final greenLargeFont = TextStyle(
    fontSize: 20,
    color: const Color.fromARGB(255, 54, 175, 24),
    fontStyle: FontStyle.normal,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Text Widget Tutorial'),
            Text('Gidince anlıyorum', style: pinkFont),
            Text('Sende herkes gibisin jdsfjsdkl', style: greenLargeFont),
          ],
        ),
      ),
    );
  }
}
