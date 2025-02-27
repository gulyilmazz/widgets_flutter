import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String child;

  MyCircle({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color.fromARGB(255, 190, 213, 223),
        ),
        child: Text(child, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
