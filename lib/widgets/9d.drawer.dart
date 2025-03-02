import 'package:flutter/material.dart';
import 'package:widgets_flutter/widgets/9.1pages/home.dart';
import 'package:widgets_flutter/widgets/9.1pages/message.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 161, 24, 24)),
      drawer: Drawer(
        //Yan menü çekmecesini oluşturur
        child: ListView(
          //İçindeki öğeleri dikey bir liste şeklinde sıralar.
          children: [
            //Listview içindeki tüm ögeler bu liste içine eklenir
            DrawerHeader(
              child: Center(
                child: Text('L O G O', style: TextStyle(fontSize: 35)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => UserHome()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 2', style: TextStyle(fontSize: 20)),
              onTap: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => UserMessage()));
                Navigator.pop(context); // Drawer'ı kapat
              },
            ),
          ],
        ),
      ),
    );
  }
}
