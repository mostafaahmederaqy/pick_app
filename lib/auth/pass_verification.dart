import 'dart:async';
import 'package:pick_app/auth/set_newPass.dart';
import 'package:quiver/async.dart';


import 'package:flutter/material.dart';

class pass_verification extends StatefulWidget {
  @override
  _pass_verificationState createState() => _pass_verificationState();
}

class _pass_verificationState extends State<pass_verification> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(

            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill )
              ,),
          ),
          Padding(
            padding: EdgeInsets.only(top: 190),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset("assets/Group 2.png",width: 250,height: 120,),

                    Padding(
                      padding: EdgeInsets.only(top: 45),
                      child: Text("كود التحقق",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 20,fontWeight: FontWeight.w600),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 35,left: 20,right: 20),
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),

                          style: TextStyle(height: 0,),
                          textAlign: TextAlign.right,
                          decoration:InputDecoration(


                            suffixIcon: Padding(

                              padding: EdgeInsets.only(),
                              child: Image.asset("assets/hash.png",height: 0,),
                            ),

                            hintText: ("كود التحقق"),
                            border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                          )

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 200, 20, 20),
                      child: Container(

                        width: 380,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white)
                            ,borderRadius:  BorderRadius.all(Radius.circular(100.0))),
                        child: Center(child: InkWell(child: Text("ارسال",style: TextStyle(color: Colors.blue),),onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>new_pass()));


                        },)),
                      ),
                    )










                  ],
                )
              ],
            ),
          )
        ],
      ),

    );
  }
}
