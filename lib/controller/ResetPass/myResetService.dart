import 'dart:convert';
import 'package:attendance_api_project/controller/const.dart';
import 'package:attendance_api_project/controller/key.dart';
import 'package:http/http.dart'as http;

import '../../model/AuthReset.dart';

class MyResetService{
  static Future<AuthReset?> mFetchUser (String id,) async{
    var response = await http.post(Uri.parse(MyApiService.resetApiUrl),headers: <String, String>{
      "Content-Type": "application/json",
      "api_key": MyApiService.resetApiKey,
    },
      body: jsonEncode({
        MyKey.e_id: id,
      }));
    if (response.statusCode == 200){
      AuthReset authReset = AuthReset.fromJson(jsonDecode(response.body));
      return authReset;
    }
    else {
      print("error");
    }
  }
}