import 'package:flutter/material.dart';
import 'package:widgets_flutter/widgets/8gesture_detector.dart';
//import 'package:widgets_flutter/widgets/column_row.dart';
//import 'package:widgets_flutter/widgets/listview_builder.dart';
//import 'package:widgets_flutter/widgets/cliprrect.dart';
//import 'package:widgets_flutter/widgets/image.dart';
import 'package:widgets_flutter/widgets/7gridview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Ana ekran sayfasını göster
    );
  }
}
