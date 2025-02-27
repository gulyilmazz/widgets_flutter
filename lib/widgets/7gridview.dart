import 'package:flutter/material.dart';

class MyGridview extends StatelessWidget {
  const MyGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        //grid =ızgara düzenegi için kullanırız
        //Az sayıda öğeniz varsa ve statik bir liste kullanıyorsanız → GridView.count
        // Büyük veri listeleriyle çalışıyorsanız veya
        // dinamik öğeler oluşturmanız gerekiyorsa → GridView.builder kullanın.
        physics: NeverScrollableScrollPhysics(),
        //(gridviewin)sayfanın kaymasını engeller
        itemCount: 10, //10 kutu olsuturur
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, //her satırda 5 kutu olur
        ),
        itemBuilder: (context, index) {
          //children: [
          return Padding(
            //widget e iç bosluk ekler
            padding: const EdgeInsets.all(8.0),
            //tüm kenarlardan bosluk bırakır 8 piksel
            child: Container(
              //bilesenleri eklediğimiz esnek kutu
              height: 50,
              width: 50,
              color: const Color.fromARGB(202, 202, 68, 180),
            ),
          );
        },
      ),
    );
  }
}
