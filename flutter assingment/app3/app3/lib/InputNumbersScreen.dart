import 'package:app3/DisplayNumbersScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Range App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputNumbersScreen(),
    );
  }
}

class InputNumbersScreen extends StatelessWidget {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 1'),
            ),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Number 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validate and navigate to the next screen
                if (number1Controller.text.isNotEmpty &&
                    number2Controller.text.isNotEmpty) {
                  int number1 = int.parse(number1Controller.text);
                  int number2 = int.parse(number2Controller.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayNumbersScreen(
                        number1: number1,
                        number2: number2,
                      ),
                    ),
                  );
                }
              },
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}
