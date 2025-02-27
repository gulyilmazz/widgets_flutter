import 'package:flutter/material.dart';

void main() {
  runApp(Myappp());
}

class Myappp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Text('G Ü L'),
          leading: IconButton(
            onPressed: () {
              //open menu
            },
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {
                //do something
              },
              icon: Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}
