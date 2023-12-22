import 'package:flutter/material.dart';
import 'package:myapp4/Screens/list.dart';
import 'package:myapp4/Screens/list1.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(16.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Icon(Icons.search),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        "Restaurant",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text("20-30mm"),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text("2.4km"),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text("Restaurant"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50, // Adjust the width as needed
                  height: 50, // Adjust the height as needed
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://media.istockphoto.com/id/1444255898/photo/firewood-stack-in-front-of-stove.webp?b=1&s=170667a&w=0&k=20&c=kF9PDSK7eXmuioPxe9L9ozpadEMVolBH2Vf4CVUoNRc="),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),  
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
               "Orange Sandwiches is delicious",
                style: TextStyle(
                   fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                 ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
               Icons.star_border,
                color: Colors.yellow,
                ),
                Text("4.7"),
                  ],
                ),
              ),
              ],
            ),
            SizedBox(height: 15),
            List(),
            SizedBox(height: 20),
            List1(),
            SizedBox(height: 20),
           Container(
            child:  IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
            alignment: Alignment.bottomRight,
           )
          ],
        ),
      ),
    );
  }
}