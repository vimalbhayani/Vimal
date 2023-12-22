import 'package:flutter/material.dart';

class ColorMixerScreen extends StatefulWidget {
  @override
  _ColorMixerScreenState createState() => _ColorMixerScreenState();
}

class _ColorMixerScreenState extends State<ColorMixerScreen> {
  double redValue = 0.0;
  double greenValue = 0.0;
  double blueValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Mixer App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Adjust the color components:'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Red'),
                Slider(
                  value: redValue,
                  onChanged: (value) {
                    setState(() {
                      redValue = value;
                      _updateBackgroundColor();
                    });
                  },
                  min: 0,
                  max: 255,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Green'),
                Slider(
                  value: greenValue,
                  onChanged: (value) {
                    setState(() {
                      greenValue = value;
                      _updateBackgroundColor();
                    });
                  },
                  min: 0,
                  max: 255,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Blue'),
                Slider(
                  value: blueValue,
                  onChanged: (value) {
                    setState(() {
                      blueValue = value;
                      _updateBackgroundColor();
                    });
                  },
                  min: 0,
                  max: 255,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Background Color',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(redValue.round(), 0, 0, 1.0),
                    Color.fromRGBO(0, greenValue.round(), 0, 1.0),
                    Color.fromRGBO(0, 0, blueValue.round(), 1.0),
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _updateBackgroundColor() {
    // No need to set the background color here as it is updated directly in the Container
  }
}
