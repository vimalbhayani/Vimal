import 'package:flutter/material.dart';

import 'list2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int itemCount = 1; // Initial count

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite_border_rounded),
                ),
              ],
            ),
            SizedBox(height: 10),
            ClipOval(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Restaurant",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.watch_later,
                      color: Colors.blueAccent,
                    ),
                    Text("50 min"),
                    SizedBox(width: 10),
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.yellow,
                    ),
                    Text("4.8"),
                    SizedBox(width: 10),
                    Icon(
                      Icons.fireplace_outlined,
                      color: Colors.orange,
                    ),
                    Text("325 cal"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Text("\$12"),
                    ),
                   Container(
                    
                    child:  IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        if (itemCount > 1) {
                          setState(() {
                            itemCount--;
                          });
                        }
                      },
                    ),
                    
                   ),
                 
                   Container(
                    child: 
                    Text(
                      itemCount.toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                    
                   ),
                   Container(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          itemCount++;
                        });
                      },
                    ),
                   ),
                  
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("Ingredianta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SizedBox(height: 20),
                List2(),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Container(
                  child: Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
                ),
                 SizedBox(height: 20),
                 Container(
            child:  IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart)),
            alignment: Alignment.bottomRight,
           )
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}