import 'package:flutter/material.dart';

import 'mandob_wallet.dart';

class mandob_settings extends StatefulWidget {
  @override
  _mandob_settingsState createState() => _mandob_settingsState();
}

class _mandob_settingsState extends State<mandob_settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(
       preferredSize: Size.fromHeight(75.0),
       child: AppBar(
       title: Text("الاعدادات",style: TextStyle(color: Colors.blue),),
         centerTitle: true,
         backgroundColor: Colors.white,

),
     ),
      body:
      Container(
        width: MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height ,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>mandob_wallet()));
                },
                child: Container(
                  width:  MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Icon(Icons.account_balance_wallet,color: Colors.blue,),


                        Padding(
                          padding: EdgeInsets.only(left: 250),
                          child: Text("المحفظة",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                        ),
                        Icon(Icons.arrow_back_ios,color: Colors.blue,),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width ,
                height: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios,color: Colors.blue,),



                    Padding(
                      padding: EdgeInsets.only(left: 220),
                      child: Text("تعديل البيانات",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                    ),

                    Icon(Icons.settings,color: Colors.blue,),
                  ],

                ),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20,left: 20,right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width ,
                height: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios,color: Colors.blue,),



                    Padding(
                      padding: EdgeInsets.only(left: 260),
                      child: Text("الرسائل",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                    ),

                    Icon(Icons.message,color: Colors.blue,),
                  ],

                ),

              ),
            )



          ],
        ),

      ),
    );
  }
}

