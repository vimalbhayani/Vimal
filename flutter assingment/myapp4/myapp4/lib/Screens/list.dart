import 'package:flutter/material.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Scrollbar(
        child: Row(
          children: <Widget>[
            buildListItem('Recommend'),
            buildListItem('popular'),
            buildListItem('noodles'),
            buildListItem('pizza'),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String itemText) {
    return Container(
      
    width: 92.0,
      height: 50.0,
      margin: EdgeInsets.all(3.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(25)
    ),
      child: Center(
        
        child: Text(
          itemText,
          
          style: TextStyle(
            
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}