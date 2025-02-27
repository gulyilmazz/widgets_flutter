import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variable
  int numberOfTimesTapped = 0;
  //method
  void _increaseNumber() {
    //Kullanıcı ekrana her dokunduğunda method calısır.
    setState(() {
      //Sayaç bir artar ve setState() sayesinde UI güncellenir.
      numberOfTimesTapped++;
    });
  }

  //uı
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increaseNumber,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Tapped ' + numberOfTimesTapped.toString() + ' times ',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
