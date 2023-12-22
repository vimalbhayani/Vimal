import 'package:flutter/material.dart';

class List2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        child: Row(
          children: <Widget>[
            buildListItem('Soba Soup', "images/download1.jpeg", context),
            buildListItem('Soba soup', "images/download1.jpeg", context),
            buildListItem('Soba Soup', "images/download1.jpeg", context),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String itemText, String image, BuildContext context) {
    return Container(
      width: 110.0,
      height: 120.0,
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Image.asset(
              image,
              width: 80,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        itemText,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10.0,
                        ),
                      ),
                      padding: EdgeInsets.all(15),
                    ),
                    
                  ],
                ),
               
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}