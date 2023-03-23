import 'dart:async';

import 'package:attendance_api_project/Pages/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (c) =>  LoginPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Assets/Images/Logo.png",height: 178,width: 186,),
            SizedBox(height: 3,),
            Text("EMPLOYEE  ATTENDANCE",style: TextStyle(color: Color(0xFF192855),fontSize: 25,fontWeight: FontWeight.w300)),
          ],
        ),
      ),
    );
  }
}