import 'package:flutter/material.dart';
import 'dart:math';





class BackgroundChangerScreen extends StatefulWidget {
  @override
  _BackgroundChangerScreenState createState() => _BackgroundChangerScreenState();
}

class _BackgroundChangerScreenState extends State<BackgroundChangerScreen> {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color Changer'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _changeBackgroundColor();
                },
                child: Text('Change Background Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _changeBackgroundColor() {
    setState(() {
      // Change the background color to a random color
      _backgroundColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    return Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    );
  }
}
