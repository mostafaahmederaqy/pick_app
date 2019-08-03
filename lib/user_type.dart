import 'package:flutter/material.dart';
import 'package:pick_app/user_content/3amel_qeta3.dart';

import 'auth/login.dart';

class user_type extends StatefulWidget {
  @override
  _user_typeState createState() => _user_typeState();
}

class _user_typeState extends State<user_type> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomPadding: false,
     body: Stack(
       children: <Widget>[

         Container(
           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)),

         ),
         Center(
           child: ListView(
             children: <Widget>[
               Column(
                 crossAxisAlignment: CrossAxisAlignment.center,


                 children: <Widget>[
                   Padding(
                     padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                     child: Image.asset("assets/pickapp.png",width: 150,),
                   ),

                   Padding(
                     padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                     child: Text("طريقك السريع لنقل جميع المستلزمات ",style: TextStyle(fontSize:18,color: Colors.blue),),
                   ),

                   Padding(
                     padding: EdgeInsets.only(top: 10),
                     child: Container(
                       width: 380,
                       height: 60,
                       decoration:  BoxDecoration(
                         color: Colors.white,

                         borderRadius: BorderRadius.all(Radius.circular(100.0)),
                       ),
                       child: Center(child: Text("اختيار نوع التسجيل ",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900),)),
                     ),


                   ),
                   Padding(
                     padding: EdgeInsets.only(top: 70),
                     child: Container(
                       width: 380,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.transparent.withAlpha(1),
                         border: Border.all(color: Colors.blue),
                         borderRadius: BorderRadius.all(Radius.circular(100.0)),

                       ),
                       child: FlatButton(color:Colors.transparent,onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>login("عميل")));
                       },child: Text("عميل",style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,color: Colors.blue),),),
                     ),
                   ),


                   /* Padding(
                   padding: EdgeInsets.only(top: 10),
                   child: Container(
                     width: 380,
                     height: 60,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(100.0)),
                       border: Border.all(color: Colors.white),
                     ),
                     child: RaisedButton(



                       onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder:(context)=>login("عميل")));},

                     child: Text("عميل"),),
                   ),
                 )*/


                   Padding(
                     padding: EdgeInsets.only(top: 14),
                     child: Container(
                       width: 380,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.transparent.withAlpha(1),
                         border: Border.all(color: Colors.blue),
                         borderRadius: BorderRadius.all(Radius.circular(100.0)),

                       ),
                       child: FlatButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>login("قطاع تجاري")));

                       },child: Text("قطاع تجاري",style: TextStyle(fontWeight:FontWeight.w400,fontSize: 20,color: Colors.blue),),),
                     ),
                   ),


                   Padding(
                     padding:EdgeInsets.only(top: 90),
                     child: Container(
                       width: 380,
                       height: 50,
                       decoration: BoxDecoration(
                         color: Colors.transparent.withAlpha(1),
                         border: Border.all(color: Colors.blue),
                         borderRadius: BorderRadius.all(Radius.circular(100.0)),

                       ),

                       child: FlatButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>login("مندوب")));

                       },child: Text("مندوب"),),
                     ),
                   )






                 ],),
             ],
           ),
         )
       ],



     ),
   );
  }
}

