import 'package:flutter/material.dart';


class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  String result = '';
  String selectedOperation = 'Add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 'Add',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Add'),
                Radio(
                  value: 'Subtract',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Subtract'),
                Radio(
                  value: 'Multiply',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Multiply'),
                Radio(
                  value: 'Divide',
                  groupValue: selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Divide'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateResult();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  void calculateResult() {
    double num1 = double.tryParse(number1Controller.text) ?? 0.0;
    double num2 = double.tryParse(number2Controller.text) ?? 0.0;

    switch (selectedOperation) {
      case 'Add':
        setState(() {
          result = (num1 + num2).toString();
        });
        break;
      case 'Subtract':
        setState(() {
          result = (num1 - num2).toString();
        });
        break;
      case 'Multiply':
        setState(() {
          result = (num1 * num2).toString();
        });
        break;
      case 'Divide':
        setState(() {
          result = (num2 != 0) ? (num1 / num2).toString() : 'Cannot divide by zero';
        });
        break;
    }
  }
}
