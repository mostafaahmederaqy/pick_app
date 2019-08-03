import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'mandob_accept_orders.dart';
import 'mandob_map.dart';


class mandob_3amel_orders extends StatefulWidget {
  @override
  _mandob_3amel_ordersState createState() => _mandob_3amel_ordersState();
}

class _mandob_3amel_ordersState extends State<mandob_3amel_orders> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue, //change your color here
          ),
          title:Text("1589635565:طلب رقم",style: TextStyle(color: Colors.blue),),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      body:


      ListView(

        children: <Widget>[
          Column(
            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Container(
                  width: 1600,
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,top: 5),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text("اسم العميل ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                        Text(": كريم رضا",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Container(
                  width: 1600,
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,top: 5),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text("حالة الطلب ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                        Text(": في الانتظار",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Container(
                  width: 1600,
                  height: 100,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,top: 5),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Image(image: AssetImage("assets/car_c.png")),
                        Text(": سيارة غمارتين",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.blue),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: Container(
                  width: 1600,
                  height: 50,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.only(right: 10,top: 5),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text("كرسي سفرة ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                        Text(":x 1 ",textDirection: TextDirection.rtl,style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                child: InkWell(onTap: (){

                },
                  child: Container(
                    width: 1600,
                    height: 50,
                    decoration: BoxDecoration(border: Border.all(color: Colors.blue[800],),borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.only(right: 10,top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: <Widget>[

                          Text("صور الأغراض المنقولة ",textDirection: TextDirection.rtl,style: TextStyle(fontSize: 17,color: Colors.blue),),
                          Icon(Icons.arrow_back_ios,color: Colors.blue,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),



              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                  height: 150,
                  width: 350,
                  child: GoogleMap(
                    onTap: (c){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mandob_map()));

                    },
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      border: new Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    ),
                    child: Center(child: InkWell(child: new Text("قبول",style: TextStyle(color: Colors.white),),onTap: ()=>{

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>mandob_accept_orders()))

                    },)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: new BoxDecoration(
                      color: Colors.red,
                      border: new Border.all(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    ),
                    child: Center(child: InkWell(child: new Text("رفض",style: TextStyle(color: Colors.white),),onTap: ()=>{

                    },)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),



    );
  }
}
/* AIzaSyDqegsckMD2Su1Rtlet-e36aujyLwAyxPY

GoogleMap(
onMapCreated: _onMapCreated,
initialCameraPosition: CameraPosition(
target: _center,
zoom: 11.0,
),
)*/
