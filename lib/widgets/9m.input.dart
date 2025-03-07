import 'package:flutter/material.dart';

class MyWidget9n extends StatefulWidget {
  const MyWidget9n({Key? key}) : super(key: key);

  @override
  State<MyWidget9n> createState() => _MyWidget9nState();
}

class _MyWidget9nState extends State<MyWidget9n> {
  //use this
  final _textController = TextEditingController();

  //store user next input a variable
  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //display text
            Expanded(
              child: Container(
                child: Center(
                  child: Text(userPost, style: TextStyle(fontSize: 35)),
                ),
              ),
            ),
            //text input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Hİ Gül.Are you ready?',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
                    // x
                    _textController.clear();
                  },
                  icon: const Icon(Icons.clear),
                ),
              ),
            ),
            //post button
            MaterialButton(
              onPressed: () {
                //update variable
                setState(() {
                  userPost = _textController.text;
                });
              },
              color: Colors.blue,
              child: const Text(
                'Post',
                style: TextStyle(color: Color.fromARGB(255, 155, 45, 45)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
