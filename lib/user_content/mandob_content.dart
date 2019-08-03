import 'package:flutter/material.dart';
import 'mandob_3amel_order_.dart';
import 'mandob_orders.dart';
import 'mandob_settings.dart';

class mandobs_content extends StatefulWidget {
  @override
  _mandobs_contentState createState() => _mandobs_contentState();
}

class _mandobs_contentState extends State<mandobs_content> {
  int currentTabIndex = 1;
  List<Widget> tabs = [
    mandob_orders(),
    mandob_content(),
    mandob_settings()
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        onTap:onTapped ,
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[

          new BottomNavigationBarItem(
              title: new Text('الطلبات',style: TextStyle(color: Colors.grey),),
              icon: InkWell(onTap:()=>{
              },


                  child: Image.asset("assets/box_gray.png"))),
          new BottomNavigationBarItem(
              title: new Text('الرئيسية'),
              icon: new Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text('الاعدادات'),
              icon: new Icon(Icons.settings)),

        ],
      ),
          body:tabs[currentTabIndex],

    );
  }
}

class mandob_content extends StatefulWidget {
  @override
  _mandob_contentState createState() => _mandob_contentState();
}

class _mandob_contentState extends State<mandob_content> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: AppBar(

        leading: Padding(
          padding: EdgeInsets.only(top:15 ),
          child: IconButton(icon: Image(image:AssetImage("assets/logout.png",),height: 25,width: 25,), onPressed:(){

            Navigator.of(context).pop();

          }),
        ),


        title: Padding(padding: EdgeInsets.only(top: 15),child: Text("الرئيسية",style: TextStyle(color: Colors.blue),),),centerTitle: true,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15,right: 5),
            child: Icon(Icons.search,color: Colors.blue,),
          )
        ],
      ), preferredSize:Size.fromHeight(75.0) ),

      body: InkWell(onTap:(){
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
      ),
        

    );
  }
}

