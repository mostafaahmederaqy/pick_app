import 'package:flutter/material.dart';
import 'user_type.dart';

class languge extends StatefulWidget {
  @override
  _langugeState createState() => _langugeState();
}

class _langugeState extends State<languge> {
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     resizeToAvoidBottomInset: false,
     body: Stack(
       children: <Widget>[
         Container(

           decoration: BoxDecoration(
             image: DecorationImage(image:AssetImage("assets/WhatsApp Image 2019-06-24 at 02.04.56.jpeg"),fit: BoxFit.fill )
             ,),
         ),
         Padding(
           padding: EdgeInsets.only(top: 150),
           child: ListView(
             children: <Widget>[
               Column(

                 children: <Widget>[


                   Image.asset("assets/Group 2.png",),

                   Padding(
                     padding: EdgeInsets.only(top: 50),
                     child: Container(
                       width: 380,
                       height: 50,


                       decoration: new BoxDecoration(
                         color: Colors.white,
                         border: new Border.all(color: Colors.white),
                         borderRadius: BorderRadius.all(Radius.circular(100.0)),
                       ),
                       child: Center(child: new Text("اختر اللغة",style:TextStyle(color: Colors.blue,fontSize: 20,fontWeight:FontWeight.w800) ,),

                       ),
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.only(top: 70),
                     child: Container(
                       width: 380,
                       height: 60,
                       decoration: BoxDecoration(
                         color: Colors.transparent.withAlpha(1),
                         border: Border.all(color: Colors.white),
                         borderRadius: BorderRadius.all(Radius.circular(100.0)),

                       ),
                       child: RaisedButton(color:Colors.transparent,onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>user_type()));
                       },child: Text("العربية",style: TextStyle(fontSize: 20,color: Colors.white),),),
                     ),
                   ),

                   Padding(
                     padding: EdgeInsets.only(top: 18),
                     child: Container(
                       width: 380,
                       height: 60,
                       decoration: BoxDecoration(
                         color: Colors.transparent.withAlpha(1),
                         border: Border.all(color: Colors.white),
                         borderRadius: BorderRadius.all(Radius.circular(100.0)),

                       ),
                       child: RaisedButton(color:Colors.transparent,onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>user_type()));
                       },child: Text("English",style: TextStyle(fontSize: 20,color: Colors.white),),),
                     ),
                   )




                 ],
               ),
             ],
           ),
         )



       ],

     ),
   );







  }
}






/*Container(


          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage("assets/WhatsApp Image 2019-06-24 at 02.04.56.jpeg"),fit: BoxFit.fitHeight )
            ,),

          child: Center(
            child: Column(



              children: <Widget>[



                Image.asset("assets/Group 2.png",),
                Text("اختر اللغة",style: TextStyle(backgroundColor: Colors.white),),

                MaterialButton(child: Text("العربية"),),


                MaterialButton(child: Text("English"),),











              ],
            ),
          ),



        ),*/





/* child: Container(width:500,padding: EdgeInsets.fromLTRB(100, 202, 120, 590),
              child: Image.asset("assets/Group 2.png",width: 100,),
            ),*/

