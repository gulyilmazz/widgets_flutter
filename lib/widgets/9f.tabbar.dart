import 'package:flutter/material.dart';
import 'package:widgets_flutter/widgets/9gtabs/first_tab.dart';
import 'package:widgets_flutter/widgets/9gtabs/second_tab.dart';
import 'package:widgets_flutter/widgets/9gtabs/third_tab.dart';

class MyWidget9f extends StatelessWidget {
  const MyWidget9f({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('T A B  B A R')),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: const Color.fromARGB(255, 78, 55, 55),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: const Color.fromARGB(255, 99, 21, 21),
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: const Color.fromARGB(255, 180, 12, 12),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  //1st tab
                  FirstTab(),
                  //2nd tab
                  SecondTab(),
                  //3rd tab
                  ThirdTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
