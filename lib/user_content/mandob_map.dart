import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'mandob_3amel_order_.dart';
import 'mandob_orders.dart';


class mandob_map extends StatefulWidget {
  @override
  _mandob_mapState createState() => _mandob_mapState();
}

class _mandob_mapState extends State<mandob_map> {

  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          actions: <Widget>[
            Padding(
              padding:EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            )
          ],
          iconTheme: IconThemeData(
            color: Colors.blue, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text("1589635565:طلب رقم",style: TextStyle(color: Colors.blue),),
          centerTitle: true,

        ),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),

        child: Stack(
          children: <Widget>[GoogleMap(


            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
            Padding(
              padding: EdgeInsets.only(top: 620),
              child: Center(
                child: Container(
                  width: 300,
                  height: 50,


                  decoration: new BoxDecoration(
                    color: Colors.red,
                    border: new Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                  child: Center(child: InkWell(child: new Text("تسجيل الدخول",),onTap: ()=>{
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mandob_orders()))




                  },)),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

