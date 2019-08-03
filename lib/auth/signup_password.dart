import 'package:flutter/material.dart';
import 'package:pick_app/user_content/3amel_qeta3.dart';

class signup_password extends StatefulWidget {
  @override
  _signup_passwordState createState() => _signup_passwordState();
}

class _signup_passwordState extends State<signup_password> {


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
              padding: EdgeInsets.only(top: 120),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("assets/Group 2.png",width: 250,height: 120,),

                      Padding(
                        padding: EdgeInsets.only(top: 45),
                        child: Text("تعيين كلمة المرور",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 20,fontWeight: FontWeight.w600),),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 35,left: 20,right: 20),
                        child: TextField(

                            style: TextStyle(height: 0,),
                            textAlign: TextAlign.right,
                            decoration:InputDecoration(


                              suffixIcon: Padding(

                                padding: EdgeInsets.only(),
                                child: Icon(Icons.person
                                  ,color: Colors.blue,),
                              ),

                              hintText: ("كلمة المرور"),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                            )

                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                        child: TextField(


                            style: TextStyle(height: 0,),
                            textAlign: TextAlign.right,
                            decoration:InputDecoration(
                              prefixIcon: Icon(Icons.keyboard_arrow_left),


                              suffixIcon: Padding(

                                padding: EdgeInsets.only(),
                                child: Icon(Icons.location_on
                                  ,color: Colors.blue,),
                              ),

                              hintText: ("تأكيد كلمة المرور"),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                            )

                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 120, 20, 1),
                        child: Container(

                          width: 380,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.white)
                              ,borderRadius:  BorderRadius.all(Radius.circular(100.0))),
                          child: Center(child: InkWell(child: Text("حفظ",style: TextStyle(color: Colors.blue,),),
                              onTap:(){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>user_content()));
                              }


                          )),
                        ),
                      ),
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
