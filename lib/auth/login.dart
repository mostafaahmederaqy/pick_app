
import 'package:flutter/material.dart';
import 'package:pick_app/controller/databasehelper.dart';
import 'package:pick_app/user_content/3amel_qeta3.dart';
import 'package:pick_app/user_content/mandob_content.dart';
import 'forget_password.dart';
import '3ameel_signup.dart';
import 'mandob_signup.dart';
import 'qeta3_signup.dart';

class login extends StatefulWidget {
  String text;
  login(this.text);
  @override
  _loginState createState() => _loginState(text);
}

class _loginState extends State<login> {

  DatabaseHelper databaseHelper=new DatabaseHelper();
  String msgStatus;
  final TextEditingController nameController=new TextEditingController();
  final TextEditingController password=new TextEditingController();
  //final TextEditingController mobile=new TextEditingController();

  _onpressed(){
    setState(() {
      if(nameController.text.trim().isNotEmpty&&password.text.trim().isNotEmpty){
        databaseHelper.loginData(nameController.text.trim().toLowerCase(),password.text.trim(),"0110123456789").whenComplete((){
          if (databaseHelper.status){
            _showDialog();
            msgStatus="check email and password";
          }else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=>user_content()));

        }

        });
      }
    });
  }


  String text;
  _loginState(this.text);
  
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
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: ListView(



                children: <Widget>[
                  Image.asset("assets/pickapp.png",height: 200,),
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Center(child: Text("تسجيل الدخول",style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,fontSize: 20),)),

                  ),
                  TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,


                    style: TextStyle(height: 0,),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.visibility),
                        suffixIcon: Padding(

                          padding: EdgeInsets.only(),
                          child: Image.asset("assets/user.png",height: 0,),
                        ),
                          hintText: ("اسم المستخدم"),
                          border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                      )

                  ),



              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: TextField(
                style: TextStyle(height: 0,),
                textAlign: TextAlign.right,
                controller: password,
                keyboardType: TextInputType.text,

                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(),
                    child: Image.asset("assets/user.png",height: 0,),
                  ),
                  hintText: ("كلمة المرور"),
                  border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                )

          ),
              ),
                  Padding(
                    padding: EdgeInsets.only(right: 250),
                    child: InkWell(child: Text("هل نسيت كلمة المرور؟",style: TextStyle(decoration:TextDecoration.underline ),),onTap: ()=>{
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>forget_password()))
                    },),
                  ),
    Padding(
      padding: EdgeInsets.only(top:150 ),
      child: new Container(
        width: 380,
      height: 40,


      decoration: new BoxDecoration(
        color: Colors.white,
          border: new Border.all(color: Colors.white),
   borderRadius: BorderRadius.all(Radius.circular(100.0)),
      ),
      child: Center(child: InkWell(child: new Text("تسجيل الدخول",),onTap: ()=>{
      if(this.text=="مندوب"){        Navigator.push(context, MaterialPageRoute(builder: (context)=>mandobs_content())),
      }else{
        _onpressed()

      },



      },)),
      ),
    ),




                  Center(child: InkWell(child: Text("ليس لديك حساب؟انشاء حساب"),onTap: ()=>{
                    if(this.text=="عميل"){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>amel_signup())),
    },

                      if(this.text=="قطاع تجاري"){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>qeta3togary_signup()))

                    },
    if(this.text=="مندوب"){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>mandoob()))

    }
                    
                  ,}),)



                ],
              ),
            ),
          )


        ],


      ),

    );
  }
  void _showDialog(){
    showDialog(context: context,
      builder: (BuildContext context){
      return AlertDialog(
        title: Text('failed'),
        content: Text("check username or password"),
        actions: <Widget>[
          RaisedButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            child: Text('close'),
          )
        ],
      );
      }
    );
  }

}
