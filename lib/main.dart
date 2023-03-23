import 'package:attendance_api_project/Pages/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Attendance());
}

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance',
      theme: ThemeData.light(),
      home:  const SplashScreen(),
    );
  }
}

