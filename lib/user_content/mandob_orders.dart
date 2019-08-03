import 'package:flutter/material.dart';

import 'mandob_3amel_order_.dart';

class mandob_orders extends StatefulWidget {
  @override
  _mandob_ordersState createState() => _mandob_ordersState();
}

class _mandob_ordersState extends State<mandob_orders> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الطلبات"),
          centerTitle: true,
          actions: <Widget>[
            Icon(Icons.search)
          ],
          bottom: TabBar(

            tabs: [
              Tab(text: "منتهية"),
              Tab(text: "قيد التوصيل",),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InkWell(onTap:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>mandob_3amel_orders()));


            } ,
              child: Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)),
                  child: Padding(
                    padding:EdgeInsets.only(top: 10,right: 10,left: 10),
                    child: ListView(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.delete,color: Colors.red,)

                                ],),

                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("كريم رضا",style: TextStyle(color: Colors.grey)),
                                      Text(":اسم العميل",),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("1589635565",style: TextStyle(color: Colors.grey)),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text(":رقم الطلب",),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text("دبابة غمارتين",style: TextStyle(color: Colors.grey)),
                                      Text(":المركبة",),
                                    ],
                                  ),
                                ],

                              )
                       ],
                          ),
           )
                      ],
                    ),
                  )
              ),
            ),

            InkWell(onTap:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>mandob_3amel_orders()));
            } ,
              child: Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)),
                  child: Padding(
                    padding:EdgeInsets.only(top: 10,right: 10,left: 10),
                    child: ListView(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.arrow_back_ios,color: Colors.blue,)

                                ],),

                              Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text("كريم رضا",style: TextStyle(color: Colors.grey)),
                                      Text(":اسم العميل",),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("1589635565",style: TextStyle(color: Colors.grey)),
                                      Padding(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text(":رقم الطلب",),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Text("دبابة غمارتين",style: TextStyle(color: Colors.grey)),
                                      Text(":المركبة",),
                                    ],
                                  ),
                                ],

                              )


                            ],
                          ),






                        )
                      ],
                    ),
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}
