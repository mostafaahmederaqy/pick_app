import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
class DatabaseHelper{

  String serverUrl="http://arfa.rmal.com.sa/equipments/api";
  var status=true;
  var token;

  loginData(String name,String password,String mobile)async{
    String myUrl="$serverUrl/signin";
    final response=await http.post(myUrl,

        headers:
        {
          //'Content-type':'application/json',
          //'Accept':'applicatio/json',
          'os':'android'

        },
        body: {
      "name":name,
       "password":password,
          "mobile":mobile

        } );

    status=response.body.contains("fails");
    var data=json.decode(response.body);
    if(status){
      print('data:${data["status"]}');
    }else{
      print(data["data"]);
      print(data["data"]["jwt"]);
      _save(data["data"]["jwt"]);


    }

  }
  registerData(var city_id,String name,String password,String mobile)async{
    String myUrl="$serverUrl/signup";


    final response=await http.post(myUrl,

        headers:
        {
         'Content-type':'application/json',
          'Accept':'applicatio/json',
          'os':'android'

        },
        body: {
          "name":name,
          "password":password,
          "mobile":mobile,
          "city_id":city_id

        } );

    status=response.body.contains("validation_errors");
    var data=json.decode(response.body);
    String y=json.decode(response.body).toString();

    print(data);
    if(status){
      print('data:${data["message"]}');
    }else{
      print('data:${data["jwt"]}');
      _save(data["jwt"]);
      print(data["jwt"]);


    }

  }


  _save(String token)async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    final key='jwt';
    final value=token;
    prefs.setString(key, value);
    print("mmmmmmmmmm"+value);

  }
  read()async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    final key='jwt';
    final value=prefs.get(key)??0;
    print("read: $value");
  }

}