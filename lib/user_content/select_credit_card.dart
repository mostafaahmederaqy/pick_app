import 'package:flutter/material.dart';

import 'add_creditCard.dart';

class credit_card extends StatefulWidget {
  @override
  _credit_cardState createState() => _credit_cardState();
}

class _credit_cardState extends State<credit_card> {
  int radioGroup = 0;

  void radioEventHandler(radioValue) {
    setState(() {
      radioGroup = radioValue;
      print(radioGroup);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(onTap:()=>Navigator.pop(context),child: Icon(Icons.arrow_forward,color: Colors.blue,)),
            ),

          ],
          iconTheme: IconThemeData(
            color: Colors.blue,

            //change your color here
          ),

          title: Text("شحن رصيد المحفظة",style: TextStyle(color: Colors.blue),),
          centerTitle: true,
          backgroundColor: Colors.white,

        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:EdgeInsets.only(left: 20,right: 20,top: 30),
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 280),
                      child: Text("اختيار البطاقة",),
                    )
                  ],),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      child: Divider(
                        color: Colors.blue,
                        height: 30,
                      )),
                ),

              ]),
                  

                    Directionality(child: Row(
                      children: <Widget>[
                        Radio(value: 0, groupValue:radioGroup, onChanged: radioEventHandler),
                        Text("بطاقة رقم 1558756698453"),
                        Padding(
                          padding: EdgeInsets.only(right: 100),
                          child: Image.asset("assets/mastercard-logo-473B8726A9-seeklogo.com.png",height: 30,width: 30,),
                        )
                      ],
                      
                    ),textDirection: TextDirection.rtl,),

                  Row(children: <Widget>[
                    Expanded(
                      child: new Container(
                          child: Divider(
                            color: Colors.blue,
                            height: 30,
                          )),
                    ),

                  ]),

                  Directionality(child: Row(
                    children: <Widget>[
                      Radio(value: 1, groupValue: radioGroup, onChanged: radioEventHandler),
                      Text("بطاقة رقم 1558756698453"),
                      Padding(
                        padding: EdgeInsets.only(right: 100),
                        child: Image.asset("assets/visa.png",height: 40,width: 40,),
                      )
                    ],

                  ),textDirection: TextDirection.rtl,),





                             























                ],
              ),
              width: 400,
              height: 200,
              decoration: BoxDecoration(
              border:Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
            ),
          ),
    Padding(
    padding:EdgeInsets.only(left: 20,right: 20,top: 20),
    child:
          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>add_credit_card()));
          },
            child: Container(
              child: Directionality(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("اضافة بطاقة ائتمان"),
                    Icon(Icons.arrow_forward_ios,color: Colors.blue,),

                  ],
                ),
              ),textDirection: TextDirection.rtl,),

              width: 400,
              height: 50,
                decoration: BoxDecoration(
                    border:Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))
            ),
          )
    ),

          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,top: 300),
            child: Container(
              child: Center(child: Text("ارسال",style: TextStyle(color: Colors.white),)),
                width: 400,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue,
                    border:Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))
            ),
          )


        ],
      ),
    );
  }
}

