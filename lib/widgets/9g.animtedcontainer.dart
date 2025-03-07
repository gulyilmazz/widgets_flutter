import 'package:flutter/material.dart';

// StatefulWidget oluşturuluyor, çünkü widget'ımızın durumu değişecek.
class MyWidgetg extends StatefulWidget {
  const MyWidgetg({super.key});

  @override
  _HomePageStates createState() => _HomePageStates();
}

class _HomePageStates extends State<MyWidgetg> {
  // Kutu için başlangıçta belirlenen boyutlar
  double boxHeight = 100;
  double boxWidth = 100;

  // Kutu rengi başlangıçta derin mor (deepPurple) olarak ayarlandı.
  // Kutu başlangıçta ekranın sol üst köşesinde (-1, -1) konumunda olacak.
  var boxColor = Colors.deepPurple;
  double boxX = -1;
  double boxY = -1;

  // Bu fonksiyon çağrıldığında kutunun boyutu büyür (300x300 olur)
  /*void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }


  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }*/

  // Bu fonksiyon çağrıldığında kutunun konumu sağ alt köşeye (1,1) taşınır.
  void _moveBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Kullanıcı ekrana dokunduğunda (_moveBox) fonksiyonunu çalıştır.
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Center(
          // AnimatedContainer, değişiklikleri yumuşak bir geçişle uygular.
          child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            alignment: Alignment(boxX, boxY),

            // Kutunun görünümü
            child: Container(height: 100, width: 100, color: Colors.deepPurple),
          ),
        ),
      ),
    );
  }
}
