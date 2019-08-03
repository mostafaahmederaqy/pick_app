import 'package:flutter/material.dart';
import 'package:pick_app/auth/pass_verification.dart';
class forget_password extends StatefulWidget {
  @override
  _forget_passwordState createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)),
          ),
          
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
              child: ListView(
                children: <Widget>[

                  Container(
                      height: 60,

                      child: Image.asset("assets/Group 2.png",)),

                  Center(child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Text("استعادة كلمة المرور",
                      style: TextStyle(color:Colors.blue,
                          fontSize: 20,fontWeight:FontWeight.w700,
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.normal ),),
                  )),

                  Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(hintText:"رقم الجوال",
                      suffixIcon: Image.asset("assets/phone.png"),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                      ),

                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 200, 20, 20),
                    child: Container(

                      width: 30,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white)
                      ,borderRadius:  BorderRadius.all(Radius.circular(100.0))),
                      child: Center(child: InkWell(child: Text("ارسال"),onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>pass_verification()));


                      },)),
                    ),
                  )




                ],
              ),
            ),
          )


        ],
      ),
    );
  }
}
