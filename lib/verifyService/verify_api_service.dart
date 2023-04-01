import 'dart:convert';

import 'package:attendance_api_project/model/auth_verify.dart';
import 'package:attendance_api_project/verifyService/verify_constans.dart';
import 'package:attendance_api_project/verifyService/verify_key_word.dart';
import 'package:http/http.dart' as http;


class VerifyService {
  static Future<Auth_veridy?> verifyMethod(String empolyeid, String otpCode) async {
    var responce = await http
        .post(Uri.parse(VerifyConstans.urlVerify), headers: <String, String>{
      'Content-Type': 'application/json',
      "api_key": VerifyConstans.verifyKey,
    },
        body: jsonEncode({
          VerifyKeyWords.verifyId:empolyeid,
          VerifyKeyWords.otpCode: otpCode,
        }));
    if (responce.statusCode == 200) {
      Auth_veridy auth_veridy = Auth_veridy.fromJson(jsonDecode(responce.body));
      return auth_veridy;
    } else {
      print("please Currect otp");
    }
  }
}