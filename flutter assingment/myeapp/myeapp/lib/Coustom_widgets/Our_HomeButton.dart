import 'package:flutter/material.dart';

import 'package:myeapp/consts/consts.dart';


Widget Our_button({onPress,String? Title, required Color color}){
  return ElevatedButton(
   style: ElevatedButton.styleFrom(primary: color,padding: EdgeInsets.all(12),),
    onPressed: (){}, child: Title!.text.make());
}
