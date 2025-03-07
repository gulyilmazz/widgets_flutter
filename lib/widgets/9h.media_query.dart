import 'package:flutter/material.dart';

class MyWidget9h extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: Center(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, //Yazıları sola yaslıyor.
          mainAxisAlignment:
              MainAxisAlignment
                  .spaceEvenly, //Yazılar aralarında eşit boşluk olacak şekilde diziliyor.
          children: [
            Text('Height: ' + MediaQuery.of(context).size.height.toString()),
            Text('Width:' + MediaQuery.of(context).size.width.toString()),
            Text(
              'Aspect Radio:' + //aspectRatio (en-boy oranı)
                  MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2),
            ),
            //orientation (ekran yönü → Portrait (dikey) veya Landscape (yatay))
            Text(MediaQuery.of(context).orientation.toString()),
          ],
        ),
      ),
    );
  }
}
