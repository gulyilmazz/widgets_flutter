import 'package:flutter/material.dart';

class Myexpanded extends StatelessWidget {
  const Myexpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.lightGreenAccent)),
          Expanded(child: Container(color: Colors.purple)),
          Expanded(
            child: Container(color: const Color.fromARGB(255, 223, 44, 98)),
          ),
        ],
      ),
    );
  }
}
