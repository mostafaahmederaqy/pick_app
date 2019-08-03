import 'package:flutter/material.dart';

class add_credit_card extends StatefulWidget {
  @override
  _add_credit_cardState createState() => _add_credit_cardState();
}

class _add_credit_cardState extends State<add_credit_card> {
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

          title: Text("اضافة بطاقة ائتمانية",style: TextStyle(color: Colors.blue),),
          centerTitle: true,
          backgroundColor: Colors.white,

        ),

      ),
      body: Container(),
    );
  }
}
