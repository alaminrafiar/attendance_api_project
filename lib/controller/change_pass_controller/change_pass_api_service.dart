import 'dart:convert';

import 'package:attendance_api_project/controller/change_pass_controller/c_pass_key.dart';
import 'package:attendance_api_project/controller/key.dart';
import 'package:attendance_api_project/model/auth_change.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'c_pass_constants.dart';

class ChangePassApiService {
  static Future<AuthChangepass?> methodChPas(
      String oldpass, String newpass, String repass) async {

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String? mytoken = sharedPreferences.getString(MyKey.token);

    var response = await http.post(Uri.parse(ChangePassConstants.urlchangepass),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "api_key": ChangePassConstants.apikeyChange,
          "Authorization": "bearer $mytoken"
             // "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZmFmZmQ2MTVlZjJhZTY4OTYxZDVhNSIsIm5hbWUiOiJhYnVsIiwicm9sZSI6ImVtcGxveWVlIiwiaWF0IjoxNjgwMzcyNjg0LCJleHAiOjE2ODA0NTkwODR9.k0MV8LYgOc7J1lioqhccdTi4vxzKcWpGEVaw0l7dZAw"
        },
        body: jsonEncode({
          ChangeKeyWords.old_password: oldpass,
          ChangeKeyWords.new_password: newpass,
          ChangeKeyWords.re_typed_new_password: repass,
        }));
    if (response.statusCode == 200) {
      AuthChangepass authChangePass =
          AuthChangepass.fromJson(jsonDecode(response.body));
      return authChangePass;
    } else {
      print("error");
    }
  }
}
