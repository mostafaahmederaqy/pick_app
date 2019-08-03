import 'dart:convert';

import 'package:http/http.dart'as http;

class callApi{
  final String _url="http://arfa.rmal.com.sa/equipments/api/";


  postData(data,apiUral)async{

    var fullUrl=_url+apiUral;

    return await http.post(
      fullUrl,
      body: jsonEncode(data),
        headers: _setHeaders()

    );

  }
  getData(apiUral)async{
    var fullUrl=_url+apiUral;
    return await http.get(
      fullUrl,
        headers: _setHeaders()
    );


  }

  _setHeaders()=>{
    'Content-type':'application/json',
    'Accept':'applicatio/json',
    'os':'android'

  };

}