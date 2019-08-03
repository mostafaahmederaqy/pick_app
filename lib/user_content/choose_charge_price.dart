import 'package:flutter/material.dart';
import 'package:pick_app/user_content/select_credit_card.dart';



class Charge_Wallet_Balance extends StatefulWidget {
  @override
  _Charge_Wallet_BalanceState createState() => _Charge_Wallet_BalanceState();
}

class _Charge_Wallet_BalanceState extends State<Charge_Wallet_Balance> {
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
              title: Text(
                "اختر مبلغ الشحن", style: TextStyle(color: Colors.blue),),
              centerTitle: true,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(onTap: () => Navigator.pop(context),
                      child: Icon(Icons.arrow_forward, color: Colors.blue,)),
                ),
              ]

          ),
        ),
        body:
        Padding(
          padding: EdgeInsets.only(top: 40,left: 20,right: 20),
          child: Container(
            child: Column(children: <Widget>[
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue[800],),
                    borderRadius: BorderRadius.circular(20)),
                child: RadioListTile(
                  value: 0,
                  groupValue: radioGroup,
                  onChanged: radioEventHandler,
                  title: Padding(
                    padding: EdgeInsets.only(left: 230),
                    child: Text("50ر.س",textDirection: TextDirection.rtl,),
                  ),
                  activeColor: Colors.blue,),


              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue[800],),
                      borderRadius: BorderRadius.circular(20)),

                    child: RadioListTile(
                      value: 1,
                      groupValue: radioGroup,
                      onChanged: radioEventHandler,
                      title: Padding(
                        padding: EdgeInsets.only(left: 230),
                        child: Text("50ر.س",textDirection: TextDirection.rtl,),
                      ),
                      activeColor: Colors.blue,),



                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue[800],),
                      borderRadius: BorderRadius.circular(20)),
                  child: RadioListTile(
                    value: 2,
                    groupValue: radioGroup,
                    onChanged: radioEventHandler,
                    title: Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: Text("50ر.س",textDirection: TextDirection.rtl,),
                    ),
                    activeColor: Colors.blue,),
                  


                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue[800],),
                      borderRadius: BorderRadius.circular(20)),
                  child: RadioListTile(
                    value: 3,
                    groupValue: radioGroup,
                    onChanged: radioEventHandler,
                    title: Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: Text("50ر.س",textDirection: TextDirection.rtl,),
                    ),
                    activeColor: Colors.blue,),



                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue[800],),
                      borderRadius: BorderRadius.circular(20)),
                  child: RadioListTile(
                    value: 4,
                    groupValue: radioGroup,
                    onChanged: radioEventHandler,
                    title: Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: Text("50ر.س",textDirection: TextDirection.rtl,),
                    ),
                    activeColor: Colors.blue,),



                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue[800],),
                      borderRadius: BorderRadius.circular(20)),
                  child: RadioListTile(
                    value: 5,
                    groupValue: radioGroup,
                    onChanged: radioEventHandler,
                    title: Padding(
                      padding: EdgeInsets.only(left: 230),
                      child: Text("50ر.س",textDirection: TextDirection.rtl,),
                    ),
                    activeColor: Colors.blue,),



                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 180),
                child: InkWell(onTap: (){

                },
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>credit_card()));
                    },
                    child: Container(
                      width: 380,
                      height: 60,
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        border: new Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                      ),
                      child: Center(child: Text("استمرار"),),

                    ),
                  ),
                ),
              )


            ]


            ),
          ),
        ));
  }
}