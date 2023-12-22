import 'package:flutter/material.dart';

import 'second.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Around Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageAroundTextScreen(),
    );
  }
}