import 'package:flutter/material.dart';
//import 'package:widgets_flutter/widgets/column_row.dart';
//import 'package:widgets_flutter/widgets/listview_builder.dart';
//import 'package:widgets_flutter/widgets/cliprrect.dart';
import 'package:widgets_flutter/widgets/image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myimages(), // Ana ekran sayfasını göster
    );
  }
}
