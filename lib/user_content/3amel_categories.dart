import 'package:flutter/material.dart';

import 'mandob_3amel_order_.dart';

class amel_categories extends StatefulWidget {
  @override
  _amel_categoriesState createState() => _amel_categoriesState();
}

class _amel_categoriesState extends State<amel_categories> {

  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:


          AppBar(
            bottom: TabBar(


              tabs: [
                Tab(child: Text("أقسام متعددة",style: TextStyle(color: Colors.blue),),),
                Tab(child: Text("قسم واحد",style: TextStyle(color: Colors.blue),),),

              ],
            ),

            leading: Padding(
              padding: EdgeInsets.only(top:15 ),
              child: Icon(Icons.search,color: Colors.blue,),
              ),

            backgroundColor: Colors.white,
            actions: <Widget>[

              Padding(
                padding: EdgeInsets.fromLTRB(0, 29, 20,0),
                child: Icon(Icons.arrow_forward,color: Colors.blue,),
              ),

            ],


            title: Padding(

              padding: EdgeInsets.only(top: 9),
              child: Text("الأقسام",style: TextStyle(color: Colors.blue),),
            ),
            centerTitle: true,
          ),

        body: TabBarView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg",),fit: BoxFit.fill)),

              child: Padding(
                padding: EdgeInsets.only(top: 40,left: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 220,
                          width: 190,
                          child: Card(
                            elevation: 10,
                            child: Padding(
                              padding: EdgeInsets.only(top: 40),
                              child: Column(
                                children: <Widget>[
                                  Image.asset("assets/food1.png"),
                                  Text("أطعمة مثلجة",style: TextStyle(fontSize: 20),),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(left: 4),
                                          child: InkWell(onTap: minus,
                                              child: Text("-",style: TextStyle(fontSize: 17),)),
                                        ),
                                        Text("$_n",),
                                        Padding(
                                          padding: EdgeInsets.only(right: 4),
                                          child: InkWell(onTap:add,child: Text("+",style: TextStyle(fontSize: 15),)),
                                        )
                                      ],
                                    ),

                                    height: 19,
                                    width: 110,
                                    decoration: BoxDecoration(border:Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(20)),
                                  )
                                ],
                              ),
                            ),

                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),



            ),
            Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg",),fit: BoxFit.fill)),
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 120,
                              child: Card(
                                elevation: 10,

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/water.png"),

                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("مواد غذائية"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                height: 120,
                                width: 120,
                                child: Card(
                                    elevation: 10,

                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("assets/food.png"),

                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("مواد غذائية"),
                                        )
                                      ],
                                    ))),
                            Container(
                                height: 120,
                                width: 120,
                                child: Card(

                                  elevation: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("assets/chair.png"),

                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("أثاث منزلي"),
                                        )
                                      ],
                                    ))),

                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 120,
                              child: Card(
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/water.png"),

                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("مواد غذائية"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                height: 120,
                                width: 120,
                                child: Card(
                                    elevation: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("assets/food.png"),

                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("مواد غذائية"),
                                        )
                                      ],
                                    ))),
                            Container(
                                height: 120,
                                width: 120,
                                child: Card(
                                    elevation: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("assets/chair.png"),

                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("أثاث منزلي"),
                                        )
                                      ],
                                    ))),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 120,
                              width: 120,
                              child: Card(
                                elevation: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image.asset("assets/water.png"),

                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text("مواد غذائية"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                                height: 120,
                                width: 120,
                                child: Card(
                                    elevation: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("assets/food.png"),

                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("مواد غذائية"),
                                        )
                                      ],
                                    ))),
                            Container(
                                height: 120,
                                width: 120,
                                child: Card(
                                    elevation: 10,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset("assets/chair.png"),

                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("أثاث منزلي"),
                                        )
                                      ],
                                    ))),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Container(
                          width: 380,
                          height: 40,
                          child: Center(child: Text("اطلب",style:TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 15),)),
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: new Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(100.0)),
                          ),

                        ),
                      ),


                    ],


                  ),
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
