import 'package:flutter/material.dart';



class ColorSelectorScreen extends StatefulWidget {
  @override
  _ColorSelectorScreenState createState() => _ColorSelectorScreenState();
}

class _ColorSelectorScreenState extends State<ColorSelectorScreen> {
  Color _selectedColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioListTile<Color>(
              title: const Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: (Color? value) {
                setState(() {
                  _selectedColor = value!;
                });
              },
            ),
            RadioListTile<Color>(
              title: const Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: (Color? value) {
                setState(() {
                  _selectedColor = value!;
                });
              },
            ),
            RadioListTile<Color>(
              title: const Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: (Color? value) {
                setState(() {
                  _selectedColor = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform actions with the selected color
              },
              child: Text('Apply Color'),
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: _selectedColor,
            ),
          ],
        ),
      ),
    );
  }
}
