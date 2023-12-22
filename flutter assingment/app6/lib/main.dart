import 'package:flutter/material.dart';

import 'second.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Font Size Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FontSizeChangerScreen(),
    );
  }
}