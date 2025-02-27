import 'package:flutter/material.dart';

class Myimages extends StatelessWidget {
  //sabit arayüz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //sayfanın iskelesi
      body: Center(
        //ortalar
        child: ClipRRect(
          //köseleri yuvarlar
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: Image.asset(
              'lib/widgets/images/maria.jpg',
              fit: BoxFit.fill, // resmi dolduruyor
            ),
          ),
        ),
      ),
    );
  }
}
