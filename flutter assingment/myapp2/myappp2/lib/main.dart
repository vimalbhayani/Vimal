
import 'package:flutter/material.dart';
import 'package:myappp2/Screen/screen.dart';


void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screens(),
    );
  }
}