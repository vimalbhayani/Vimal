import 'package:flutter/material.dart';


class CheckboxTextDisplayScreen extends StatefulWidget {
  @override
  _CheckboxTextDisplayScreenState createState() => _CheckboxTextDisplayScreenState();
}

class _CheckboxTextDisplayScreenState extends State<CheckboxTextDisplayScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Text Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            SizedBox(height: 20),
            if (_isChecked)
              Text(
                'This text is displayed when the checkbox is checked.',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
