import 'package:flutter/material.dart';

class Mycolumnrow extends StatelessWidget {
  const Mycolumnrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(color: const Color.fromARGB(255, 33, 105, 187)),
          ),
          Container(width: 100, color: const Color.fromARGB(255, 61, 122, 192)),
          Container(width: 100, color: const Color.fromARGB(255, 71, 126, 189)),
        ],
      ),
    );
  }
}
