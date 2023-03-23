import 'dart:convert';

import 'package:attendance_api_project/controller/change_pass_controller/c_pass_key.dart';
import 'package:attendance_api_project/model/auth_change.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'c_pass_constants.dart';

class ChangePassApiService {
  static Future<AuthChangepass?> methodChPas(
      String oldpass, String newpass, String repass) async {
    var response = await http.post(Uri.parse(ChangePassConstants.urlchangepass),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "api_key": ChangePassConstants.apikeyChange,
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZmFmZmQ2MTVlZjJhZTY4OTYxZDVhNSIsIm5hbWUiOiJhbGFtaW4iLCJyb2xlIjoiZW1wbG95ZWUiLCJpYXQiOjE2NzkzODk1MzQsImV4cCI6MTY3OTQ3NTkzNH0.ZVwIsP38m13ZmEnabklYmrz1aUdswK0oeilmohB0qj4"
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
