import 'dart:convert';
import 'dart:io';

import 'package:attendance_api_project/controller/key.dart';
import 'package:attendance_api_project/model/AuthLogin.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../const.dart';

class MyLoginService {
  static Future<AuthLogin?> mFetchUser(String id, String password) async {
    final SharedPreferences sharedPreferences =await SharedPreferences.getInstance();
    var response = await http.post(Uri.parse(MyApiService.loginApiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "api_key": '5267556B58703273357638792F423F45',
        },
        body: jsonEncode({
          MyKey.employee_id: id,
          MyKey.password: password,
        }));
    if (response.statusCode == 200) {
      AuthLogin authLogin = AuthLogin.fromJson(jsonDecode(response.body));

      sharedPreferences.setString(MyKey.token, authLogin.token! );
      print("login ${sharedPreferences.getString(MyKey.token)}");
      return authLogin;
    } else {
      print('error');
    }
  }
}
