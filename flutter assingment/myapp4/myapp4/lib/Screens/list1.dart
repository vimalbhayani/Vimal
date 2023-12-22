import 'package:flutter/material.dart';

import 'secondscreen.dart'; // Import the correct Second_Screen

class List1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scrollbar(
        child: Column(
          children: <Widget>[
            buildListItem('Soba Soup', "images/download1.jpeg", context),
            buildListItem('Soba soup', "images/download1.jpeg", context),
            buildListItem('Soba Soup', "images/download3.jpeg", context),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String itemText, String image, BuildContext context) {
    return Container(
      width: 350.0,
      height: 150.0,
      margin: EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Row(
          children: [
            Image.asset(
              image,
              width: 150,
              fit: BoxFit.cover,
            ),
            Column(
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
                          fontSize: 16.0,
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 30),
                      child: IconButton(
                        onPressed: () {
                          // Use the correct context to navigate to Second_Screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen1(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_right),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Text("No1. in Sales"),
                      margin: EdgeInsets.only(right: 60),
                    ),
                    Container(
                      child: Text("\$12"),
                      margin: EdgeInsets.only(right: 110),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}