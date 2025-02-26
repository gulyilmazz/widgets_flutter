import 'package:flutter/material.dart';

class Myimages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: Image.asset(
              'lib/widgets/images/maria.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
