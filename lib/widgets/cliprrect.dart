import 'package:flutter/material.dart';

class Mycliprrect extends StatelessWidget {
  const Mycliprrect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(height: 300, width: 300, color: Colors.pinkAccent),
        ),
      ),
    );
  }
}
