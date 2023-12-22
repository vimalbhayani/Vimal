import 'package:flutter/material.dart';

class screens extends StatefulWidget {
  const screens({super.key});

  @override
  State<screens> createState() => _screensState();
}

class _screensState extends State<screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Container(
          child: Container(
            child: Image.network("https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_1280.jpg"),
          ),
        ),
        Container(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      Container(
                        child: Text("foren",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),),

                      ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                              Text("41"),
                              
                            ],
                            
                          ),
                          
                        ),
                        
                         
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("lake"),
                  ),
                ],
              ),
            )
            ],
            
          ), 
          ),
          SizedBox(height: 20),
         Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Column(
      children: [
        Icon(Icons.call),
        Text("Call 1"),
      ],
    ),
    Column(
      children: [
        Icon(Icons.route),
        Text("route"),
      ],
    ),
    Column(
      children: [
        Icon(Icons.share_rounded),
        Text("share"),
      ],
    ),
  ],
),
SizedBox(height: 20),
Container(
  child: Text("A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs."),
)

         
      ],
    
  
    ),
    );
  }
}