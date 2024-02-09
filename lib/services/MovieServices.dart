import 'dart:convert';

import 'package:http/http.dart' as http;

class MovieApiService
{
  Future<dynamic> sendData(
      String url,String name,String rating
      ) async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://localhost:3001/api/movie/add");
    var response=await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type":"application/json ; charset=UTF-8"
    },
    body: jsonEncode(<String,String>{
      "url":url,
      "name": name,
      "rating": rating
    }));
    if(response.statusCode==200)
      {
        return jsonDecode(response.body);
      }
    else
      {
        throw Exception("Failed");
      }
  }
}