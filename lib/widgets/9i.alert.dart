import 'package:flutter/material.dart';

// StatefulWidget çünkü kullanıcı butona bastığında bir değişiklik oluyor
//(popup açılıyor)
class MyWidgeti extends StatefulWidget {
  const MyWidgeti({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyWidgeti> {
  // Bu fonksiyon çağrıldığında bir uyarı (AlertDialog) gösterir.
  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Title'),
          content: Text('Content,more info'), // Açıklama kısmı
          actions: [
            MaterialButton(
              onPressed: () {
                //do something
              },
              child: Text('Ok'),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
                //"Cancel": Navigator.pop(context) çağrılarak
                //AlertDialog kapatılıyor.
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          color: Colors.deepPurple[100],
          onPressed: _showDialog,
          child: Padding(
            padding: const EdgeInsets.all(
              8.0,
            ), // Butona iç boşluk (padding) ekleniyor.
            child: Text('Show Dialog', style: TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}
