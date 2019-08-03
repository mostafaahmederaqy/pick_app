import 'package:flutter/material.dart';

import 'choose_charge_price.dart';

class mandob_wallet extends StatefulWidget {
  @override
  _mandob_walletState createState() => _mandob_walletState();
}

class _mandob_walletState extends State<mandob_wallet> {
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

            title: Text("المحفظة",style: TextStyle(color: Colors.blue),),
            centerTitle: true,
            backgroundColor: Colors.white,

          ),
        ),
        body:
        Container(
        width: MediaQuery.of(context).size.width,
    height:MediaQuery.of(context).size.height ,
          color: Colors.white10,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
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


                         Text("الرصيد الحالي",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),

                        Text("00  رس",textDirection: TextDirection.rtl,),


                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5,right: 20,left: 20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Charge_Wallet_Balance()));
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


                          Text("اشحن رصيد المحفظة",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),

                          Icon(Icons.arrow_back,color: Colors.blue,)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
    )


    );
  }
}
