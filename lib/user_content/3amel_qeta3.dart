import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

import '3amel_categories.dart';
import '3amel_more.dart';
import '3amel_notifications.dart';
import '3amel_orders.dart';
import '3amel_settings.dart';


class user_content extends StatefulWidget {
  @override
  _user_contentState createState() => _user_contentState();
}

class _user_contentState extends State<user_content> {
  int currentTabIndex = 2;
  List<Widget> tabs = [
    amel_more(),
    amel_orders(),
    amel_main(),
    amel_settings(),
    amel_notifications()
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
        onTap: onTapped,
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              title: new Text('المزيد',),
              icon: new Icon(Icons.more_horiz,),
          ),
          new BottomNavigationBarItem(
              title: new Text('طلباتي',style: TextStyle(color: Colors.grey),),
              icon: Icon(Icons.shopping_basket)),
          new BottomNavigationBarItem(
              title: new Text('الرئيسية'),
              icon: Icon(Icons.home)),
          new BottomNavigationBarItem(
              title: new Text('الاعدادات'),
              icon: new Icon(Icons.settings)),
          new BottomNavigationBarItem(
              title: new Text('التنبيهات'),
              icon: new Icon(Icons.notifications_active)),
        ],
      ),

      body: tabs[currentTabIndex],

    );
  }
}


class amel_main extends StatefulWidget {
  @override
  _amel_mainState createState() => _amel_mainState();
}

class _amel_mainState extends State<amel_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:

      PreferredSize(
        preferredSize: Size.fromHeight(75.0),

        child:

        AppBar(

          backgroundColor: Colors.white,
          actions: <Widget>[

            Padding(
              padding: EdgeInsets.fromLTRB(0, 29, 20,0),
              child: Image.asset("assets/search.png"),
            ),

          ],


          title: Padding(

            padding: EdgeInsets.only(top: 9),
            child: Text("نوع المركبة",style: TextStyle(color: Colors.blue),),
          ),
          centerTitle: true,
        ),
      ),


        body:
        Container(
          decoration: BoxDecoration(color:Colors.blue[50],/*image:DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),fit: BoxFit.fill)*/),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Center(child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text("يرجي اختيار حجم المركبة\n        حسب أغراضك ",style: TextStyle(color: Colors.blue,fontWeight:FontWeight.w900,fontSize:20),),
                  )),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.fromLTRB(50, 25, 0, 0),
                        child: InkWell(
                          onTap: ()=>{
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>amel_categories()))
                          },
                          child: Container(
                              decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(35.0))),


                              width: 160,
                              height: 160,
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 12,right: 100),
                                  child: Image.asset("assets/information.png",height: 16,width:18 ,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Image.asset("assets/car_b.png"),
                                ),
                                Text("بيكب غمارتين",style: TextStyle(color: Colors.blue),)
                              ],)
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.fromLTRB(15, 20, 0, 0),
                        child: Container(
                            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(35.0))),


                            width: 160,
                            height: 160,
                            child: Column(children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 7,right: 100),
                                child: Image.asset("assets/information.png",height: 16,width:18 ,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Image.asset("assets/car_a.png"),
                              ),
                              Text("بيكب غمارة",style: TextStyle(color: Colors.blue),)
                            ],)
                        ),
                      ),

                    ],

                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding:EdgeInsets.fromLTRB(45, 25, 0, 0),
                        child: Container(
                            decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(35.0))),


                            width: 160,
                            height: 160,
                            child: Column(children: <Widget>[

                              Padding(
                                padding: EdgeInsets.only(right: 100,top: 10),
                                child: Image.asset("assets/information.png",height: 16,width: 18,),
                              ),
                              Image.asset("assets/car_c.png"),
                              Text("دبابة غمارتين",style: TextStyle(color: Colors.blue),)
                            ],)
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.fromLTRB(15, 25, 0, 0),
                        child: Container(
                          decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(35.0))),


                          width: 160,
                          height: 160,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 100,top: 10),
                                child: Image.asset("assets/information.png",height: 16,width: 18,),
                              ),
                              Image.asset("assets/car_d.png"),
                              Text("دبابةغمارة",style: TextStyle(color: Colors.blue),)

                            ],
                          ),
                        ),
                      ),

                    ],

                  ),
                  Padding(
                    padding:EdgeInsets.fromLTRB(15, 25, 0, 0),
                    child: Container(
                        decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.all(Radius.circular(35.0))),


                        width: 160,
                        height: 160,
                        child:Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 100,top: 10),
                              child: Image.asset("assets/information.png",height: 16,width: 18,),
                            ),
                            Image.asset("assets/car_a.png"),
                            Text("4 x 4")
                          ],
                        )
                    ),
                  ),

                ],
              ),



            ],
          ),
        )


    );
  }
}

