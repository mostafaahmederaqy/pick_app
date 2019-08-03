import 'dart:convert';
import 'package:pick_app/Models/3amel_mode.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pick_app/Models/Cities.dart';
import 'package:pick_app/api/NetworkUtil.dart';
import 'package:pick_app/api/api.dart';
import 'package:http/http.dart' as http;
import 'package:pick_app/controller/databasehelper.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'activation_signup.dart';
import 'login.dart';
class amel_signup extends StatefulWidget {
  @override
  _amel_signupState createState() => _amel_signupState();
}
class _amel_signupState extends State<amel_signup> {
  NetworkUtil _util = NetworkUtil();
  DatabaseHelper databaseHelper = new DatabaseHelper();
GlobalKey<FormState> _formKey=GlobalKey<FormState>();
  String city_name = "اختر المدينة";
  Cities cities;
  The3AmelModel _the3amelModel;
  int city_id;
  String name;
  String mobile;
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  _onpressed() async{
_formKey.currentState.save();
      if (nameController.text.trim().isNotEmpty &&
          passwordController.text.trim().isNotEmpty &&
          mobileController.text.trim().isNotEmpty&&city_id.toString().isNotEmpty) {
        FormData _headres = FormData.from({ 'Content-type':'application/json',
          'Accept':'applicatio/json',
          'os':'android'});
        FormData _body= FormData.from({
          "name":name,
          "city_id":city_id,
          "mobile":mobile,
          "password":passwordController,
        });
     Response response= await _util.post("signup",headers: _headres ,body: _body);
        if(response.statusCode==200){
          setState(() {
            _the3amelModel=The3AmelModel.fromJson(json.decode(response.toString()));
          });
            final SharedPreferences prefs=await SharedPreferences.getInstance();
            prefs.setString("name", _the3amelModel.data.name);
            prefs.setString("city_id",_the3amelModel.data.cityId );
            prefs.setString("mobile",_the3amelModel.data.mobile );
            prefs.setString("jwt",_the3amelModel.data.jwt );
            var jwt=prefs.get("jwt");
            var city_id=prefs.get("city_id");
            var mobile=prefs.get("mobile");
            var name=prefs.get("name");
            print("vghyhuhuhu"+city_id);
            print("vghyhuhuhu"+mobile);
            print("vghyhuhuhu"+name);
            print("vghyhuhuhu"+jwt);

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => activation() ));

        }


        else {
          _showDialog();
        }


      /*  databaseHelper
            .registerData(city_id.toString(), nameController.text.trim().toLowerCase(),
                passwordController.text.trim(), mobileController.text.trim())
            .whenComplete(() {
          if (databaseHelper.status) {
            _showDialog();
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => activation();
          }
        });*/
      }else{
        print("من فضلك اكمل البيانات");
      }

    ;
  }

  bool isloading = false;

  @override
  void initState() {
    getCities();
    super.initState();
  }

  void getCities() async {
    FormData _headres = FormData.from({"Accept": "application/json"});
    Response response = await _util.get("cities", headers: _headres);
    if (response.statusCode == 200) {
      setState(() {
        cities = Cities.fromJson(json.decode(response.toString()));
      });
    } else {
      print("kosmiiiat nagin soror");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      "assets/WhatsApp Image 2019-06-23 at 07.54.21.jpeg"),
                  fit: BoxFit.fill),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 120),
            child: Form(
              key: _formKey,
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/Group 2.png",
                        width: 250,
                        height: 120,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 45),
                        child: Text(
                          "حساب جديد",
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 35, left: 20, right: 20),
                        child: TextFormField(
                          onSaved: (String Vlue){
                            name=Vlue;
                          },
                            controller: nameController,
                            style: TextStyle(
                              height: 0,
                            ),
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                              ),
                              hintText: ("اسم المستخدم"),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return ListView.builder(
                                    itemBuilder: (context, index) {
                                      return cityRow(cities.data[index].cityName,
                                          cities.data[index].cityId);
                                    },
                                    itemCount: cities.data.length,
                                  );
                                });
                          },
                          child: Container(
                            width: 380,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100.0))),
                            child: Center(child: Text(city_name)),
                            /*

                            controller: cityController,


                              style: TextStyle(height: 0,),
                              textAlign: TextAlign.right,
                              decoration:InputDecoration(
                                prefixIcon: Icon(Icons.keyboard_arrow_left),


                                suffixIcon: Padding(

                                  padding: EdgeInsets.only(),
                                  child: Icon(Icons.location_on
                                    ,color: Colors.blue,),
                                ),

                                hintText: ("المدينة"),
                                hintStyle: TextStyle(color: Colors.blue),
                                border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(50))),
                              )*/
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: TextFormField(
                            onSaved: (String Vlue){
                              mobile=Vlue;
                            },
                            controller: mobileController,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: TextStyle(
                              height: 0,
                            ),
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.keyboard_arrow_left),
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  Icons.phone_in_talk,
                                  color: Colors.blue,
                                ),
                              ),
                              hintText: ("رقم الجوال"),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: TextField(
                            controller: passwordController,
                            keyboardType: TextInputType.numberWithOptions(),
                            style: TextStyle(
                              height: 0,
                            ),
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: EdgeInsets.only(),
                                child: Icon(
                                  Icons.lock_open,
                                  color: Colors.blue,
                                ),
                              ),
                              hintText: ("كلمة المرور"),
                              hintStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 120, 20, 1),
                        child: Container(
                          width: 380,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100.0))),
                          child: Center(
                              child: InkWell(
                                  child: Text(
                                    isloading
                                        ? "جاري التسجيل"
                                        : "تسجيل حساب جديد",
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  onTap:
                                      _onpressed /*isloading ? null : _handlelogin*/
                                  //  Navigator.push(context,MaterialPageRoute(builder: (context)=>activation()));

                                  )),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: InkWell(
                            child: Text(
                              "لديك حساب؟تسجيل الدخول",
                              style: TextStyle(
                                  color: Colors.blue[700], fontSize: 10),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login("عميل")));
                            },
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _handlelogin() async {
    setState(() {
      isloading = true;
    });
    var data = {
      "name": nameController.text,
      "city_id": city_id,
      "mobile": mobileController.text,
      "password": passwordController.text
    };
    var res = await callApi().postData(data, 'signup');
    var body = json.decode(res.body);
    print(body);
    if (body["status"] == 'ok') {
      SharedPreferences localstorage = await SharedPreferences.getInstance();
      localstorage.setString('jwt', body["data"]['jwt']);
      localstorage.setString('data', json.encode(body["data"]));

      print(body['data']);
      print(body["data"]['jwt']);

      var datajson = localstorage.getString("data");
      print(datajson);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => activation()));
    }

    setState(() {
      isloading = false;
    });
  }

  Widget cityRow(String c_name, int c_id) {
    return InkWell(
      onTap: () {
        setState(() {
          city_name = c_name;
          city_id = c_id;
          print(city_name);
          print(c_id.toString());
          Navigator.pop(context);
        });
      },
      child: Center(
        child: Text(c_name),
      ),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('failed'),
            content: Text("check username or password"),
            actions: <Widget>[
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('close'),
              )
            ],
          );
        });
  }
}
