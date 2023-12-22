import 'package:flutter/material.dart';
import 'package:myeapp/Coustom_widgets/Coustom_TextFiled.dart';
import 'package:myeapp/Coustom_widgets/Our_HomeButton.dart';
import 'package:myeapp/Coustom_widgets/SCreen_back.dart';
import 'package:myeapp/consts/consts.dart';

class signing_screen extends StatefulWidget {
  const signing_screen({super.key});

  @override
  State<signing_screen> createState() => _signing_screenState();
}

class _signing_screenState extends State<signing_screen> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Back_Screen(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Custom_TextFiled(
                Title: name,
                hinttext: name
              ),
              Custom_TextFiled(
                Title: email,
                hinttext: email
              ),
              Custom_TextFiled(
                Title: password,
                hinttext: passwordHint
              ),
            Custom_TextFiled(
              Title: retyrppassword,
              hinttext: retypepassHint
            ),
            Row(
              children: [
                Checkbox(value: isCheck, onChanged: (newvalue){
                  setState(() {
                    isCheck =newvalue!;
                  });
                }),
                "i agree to all terms and condtion".text.make()
              ],
            ),
            10.heightBox,
            TextButton(onPressed: (){}, child: "alredy have an account ? ".text.color
            (redColor).make( )),
            2.heightBox,
            Our_button(
              Title: signup,
              color:(isCheck == true)?redColor:fontGrey,
              onPress: (){}
            )
            ],

          ).box.white.height(context.screenHeight/1.5).padding(EdgeInsets.all(8.0)).
          shadowSm.rounded.width(context.screenWidth*.75).make(),
          
        ),
      )

    );
  }
}