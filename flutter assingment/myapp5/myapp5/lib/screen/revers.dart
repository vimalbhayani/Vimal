import 'package:flutter/material.dart';
class NumberReversalScreen extends StatefulWidget {
  @override
  _NumberReversalScreenState createState() => _NumberReversalScreenState();
}

class _NumberReversalScreenState extends State<NumberReversalScreen> {
  TextEditingController _inputController = TextEditingController();
  TextEditingController _outputController = TextEditingController();

  void _reverseNumber() {
    String inputText = _inputController.text;
    if (inputText.isNotEmpty) {
      // ignore: unused_local_variable
      int inputNummber = int.parse(inputText);
      int reversedNumber = int.parse(inputText.split('').reversed.join());
      _outputController.text = reversedNumber.toString();
    } else {
      _outputController.text = ''; // Clear output if input is empty
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Reversal App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _inputController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text('Reverse Number'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _outputController,
              enabled: false,
              decoration: InputDecoration(
                labelText: 'Reversed Number',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

