import 'package:app5/second.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Background Color Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BackgroundChangerScreen(),
    );
  }
}