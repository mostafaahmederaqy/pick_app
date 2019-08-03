import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:pick_app/auth/signup_password.dart';

import 'login.dart';

class qeta3togary_signup extends StatefulWidget {
  @override
  _qeta3togary_signupState createState() => _qeta3togary_signupState();
}

class _qeta3togary_signupState extends State<qeta3togary_signup> {
  Future<File> imageFile;


  pickImageFromGallary(ImageSource source){
    setState(() {
      imageFile=ImagePicker.pickImage(source: source);

    });



  }
  Widget showImage(){
    return FutureBuilder<File>(
        future:imageFile ,
        builder: (BuildContext context,AsyncSnapshot<File>snapshot){
          if(snapshot.connectionState==ConnectionState.done&&snapshot.data!=null){
            return Center(
              child: (
                 Image.file(

                   snapshot.data,
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,

                )
              ),
            );
          }else if(snapshot.error!=null){
            return const Text('Error Picking Image',
              textAlign: TextAlign.center,

            );
          }else{
            return const Text('',
              textAlign: TextAlign.center,

            );

          }

        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          Stack(
            children: <Widget>[

              Container(
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)), ),
                  
                  Padding(padding: EdgeInsets.only(top: 120),
                    child: ListView(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                             new PhysicalModel(

                                color: Colors.white,
                                child:
                                InkWell(onTap: (){
                                  pickImageFromGallary(ImageSource.gallery );
                                },
                                  child: Container(
                                    child: showImage(),
                                    
                                    width: 150.0,
                                    height: 150.0,
                                    decoration: new BoxDecoration(image: DecorationImage(image: AssetImage("assets/camera.png")),
                                      borderRadius: new BorderRadius.circular(80.0),
                                      border: new Border.all(
                                        width: 5.0,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(top:15),
                              child: Text("حساب جديد",style:TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 18,fontWeight:FontWeight.w600),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: Text("مفوض عنه",style: TextStyle(color: Colors.blue[300],fontSize: 18),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 60),
                                    child: Text("صاحب المنشأة",style:TextStyle(color: Colors.blue[300],decoration: TextDecoration.underline,fontSize: 18) ,),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 35,left: 15,right: 15),
                              child: TextField(

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1
                                        ,color: Colors.blue,size: 15.0,),
                                    ),

                                    hintText: ("اسم المنشأة"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("مجال المنشأة"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("رقم السجل التجاري"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("البريد الالكتروني الخاص بالمنشأة"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(
                                keyboardType: TextInputType.numberWithOptions(),

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("رقم الجوال"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(
                                  keyboardType: TextInputType.numberWithOptions(),

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    prefixIcon:Icon(Icons.keyboard_arrow_left) ,


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("المدينة/المنطقة"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(
                                  keyboardType: TextInputType.numberWithOptions(),

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    prefixIcon:Icon(Icons.attach_file) ,


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("صورة السجل"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                              child: TextField(
                                  keyboardType: TextInputType.numberWithOptions(),

                                  style: TextStyle(height: 0,),
                                  textAlign: TextAlign.right,
                                  decoration:InputDecoration(


                                    prefixIcon:Icon(Icons.keyboard_arrow_left) ,


                                    suffixIcon: Padding(

                                      padding: EdgeInsets.only(),
                                      child: Icon(Icons.brightness_1,size: 15.0
                                        ,color: Colors.blue,),
                                    ),

                                    hintText: ("فروع المنشأة"),
                                    hintStyle: TextStyle(color: Colors.blue),
                                    border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(100))),
                                  )

                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4,left: 240),
                              child: Row(
                                children: <Widget>[
                                Text("الموافقة علي الشروط والأحكام",style: TextStyle(color: Colors.blue,fontSize: 10),),
                                  Checkbox(value: true, onChanged: null,checkColor: Colors.blue,),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top:25 ),
                              child: new Container(
                                width: 350,
                                height: 50,


                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  border: new Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(80.0)),
                                ),
                                child: Center(child: InkWell(child: new Text("تسجيل حساب جديد",style: TextStyle(color: Colors.blue),),
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signup_password()));
                                },
                                ),

                                )),
                              ),

                            Padding(
                                padding: EdgeInsets.only(top:3),
                                child: InkWell(child: Text("لديك حساب؟تسجيل الدخول",style: TextStyle(color: Colors.blue[700],fontSize: 10),),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>login("قطاع تجاري")));


                                  },
                                )










                            )












                          ],
                        )
                      ],
                    ),

                  ),


                  /*Padding(
                    padding: EdgeInsets.only(left: 140,top: 140),
                    child: new PhysicalModel(

                      color: Colors.white,
                      child:
                    Container(
                      child: Image.asset("assets/camera.png"),
                      width: 150.0,
                      height: 150.0,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(80.0),
                        border: new Border.all(
                          width: 5.0,
                          color: Colors.blue,
                        ),
                      ),
                    ),
    ),
                  )*/






            ],
          )
              /*child:




         */


    );
  }
}
