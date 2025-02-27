import 'package:flutter/material.dart';
import 'package:widgets_flutter/widgets/9.1pages/account.dart';
import 'package:widgets_flutter/widgets/9.1pages/home.dart';
import 'package:widgets_flutter/widgets/9.1pages/message.dart';
import 'package:widgets_flutter/widgets/9.1pages/settings.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);
  //}
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePages> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHome(),
    UserSettings(),
    UserMessage(),
    UserAccount(),
  ];

  /*final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 50))),
    Center(child: Text('Message Page', style: TextStyle(fontSize: 50))),
    Center(child: Text('Settings Page', style: TextStyle(fontSize: 50))),
    Center(child: Text('Account Page', style: TextStyle(fontSize: 50))),
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
