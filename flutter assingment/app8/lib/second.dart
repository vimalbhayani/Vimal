import 'package:flutter/material.dart';



class ImageAroundTextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Around Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
               Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",height: 100,width: 100,),
               SizedBox(height: 15,width: 10,),
                Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",height: 100,width: 100,)
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Text Here',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",height: 100,width: 100,),
               SizedBox(height: 15,width: 10,),
                Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",height: 100,width: 100,)  ],
            ),
          ],
        ),
      ),
    );
  }
}
