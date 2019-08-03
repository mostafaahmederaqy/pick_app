import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pick_app/language.dart';

class spalsh_screen extends StatefulWidget {

  @override
  _spalsh_screenState createState() => _spalsh_screenState();
}

class _spalsh_screenState extends State<spalsh_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> languge())));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(body:

    Container(

      

        decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("assets/WhatsApp Image 2019-06-24 at 04.20.57.jpeg"),fit: BoxFit.fill )
        ,),




     












    )
    );
  }
}
