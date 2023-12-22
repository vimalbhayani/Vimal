import 'package:flutter/material.dart';



class FontSizeChangerScreen extends StatefulWidget {
  @override
  _FontSizeChangerScreenState createState() => _FontSizeChangerScreenState();
}

class _FontSizeChangerScreenState extends State<FontSizeChangerScreen> {
  double _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is some text',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _increaseFontSize();
                  },
                  child: Text('Increase Font Size'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _decreaseFontSize();
                  },
                  child: Text('Decrease Font Size'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _increaseFontSize() {
    setState(() {
      // Increase font size by 2 units
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      // Decrease font size by 2 units, but not below 10
      _fontSize = (_fontSize - 2.0).clamp(10.0, double.infinity);
    });
  }
}
