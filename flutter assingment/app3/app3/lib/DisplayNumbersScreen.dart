

import 'package:flutter/material.dart';

class DisplayNumbersScreen extends StatelessWidget {
  final int number1;
  final int number2;

  DisplayNumbersScreen({required this.number1, required this.number2});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(number2 - number1 + 1, (index) => number1 + index);

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Between $number1 and $number2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Numbers between $number1 and $number2:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                numbers.join(', '),
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}