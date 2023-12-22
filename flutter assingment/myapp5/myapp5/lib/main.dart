import 'package:flutter/material.dart';
import 'package:myapp5/screen/revers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Reversal App',
      home: NumberReversalScreen(),
    );
  }
}
