import 'package:flutter/material.dart';
import 'package:widgets_flutter/widgets/4.2square.dart';
import 'package:widgets_flutter/widgets/4.1circle.dart';

class MyListviewbuilder extends StatelessWidget {
  final List _posts = ['post1', 'post2', 'post3', 'post4', 'post5'];
  final List _stories = ['story1', 'story2', 'story3', 'story4', 'story5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //instagram stories
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal, //yana kaydırmak için
              itemBuilder: (context, Index) {
                return MyCircle(child: _stories[Index]);
              },
            ),
          ),
          //instagram
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(child: _posts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
