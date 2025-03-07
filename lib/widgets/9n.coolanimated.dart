import 'package:flutter/material.dart';

class MyWidget9n extends StatefulWidget {
  const MyWidget9n({Key? key}) : super(key: key);

  @override
  _MyWidget9nState createState() => _MyWidget9nState();
}

class _MyWidget9nState extends State<MyWidget9n>
    with SingleTickerProviderStateMixin {
  //create the animation controller
  late AnimationController _animationController;

  //initialize the animaiton controller
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  // method for when user taps icon
  bool videoPlaying = false;
  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: _animationController,
            size: 150,
          ),
        ),
      ),
    );
  }
}
