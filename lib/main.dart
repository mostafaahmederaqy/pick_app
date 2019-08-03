import 'package:flutter/material.dart';
import 'package:pick_app/welcome.dart';

void main(){
  runApp(MaterialApp(initialRoute: "splash",

    debugShowCheckedModeBanner: false,
    routes:  {
      "splash": (context) => spalsh_screen     (),}

  ));
}

