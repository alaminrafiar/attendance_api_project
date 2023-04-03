import 'package:attendance_api_project/Pages/Attendance/Attendance.dart';
import 'package:attendance_api_project/Pages/LoginPage/Forgot%20Password.dart';
import 'package:attendance_api_project/controller/Login/my%20login%20service.dart';
import 'package:attendance_api_project/model/AuthLogin.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? __message;
  final _formfield = GlobalKey<FormState>();
  final idController = TextEditingController();
  final passController = TextEditingController();

  bool passToggle = true;

  AuthLogin? authLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 150),
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                Image.asset(
                  "Assets/Images/Logo.png",
                  height: 178,
                  width: 186,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 160,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: idController,
                        decoration: InputDecoration(
                          hintText: "Employee ID",
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Employee ID is Required";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: passController,
                        obscureText: passToggle,
                        decoration: InputDecoration(
                          hintText: "Password",
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 15),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade200, width: 2),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(passToggle
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is Required";
                          } else if (passController.text.length < 6) {
                            return "Password must be 6 characters or more";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () async {
                    authLogin = await MyLoginService.mFetchUser(
                        idController.text, passController.text);
                    setState(() {});

                    if (_formfield.currentState!.validate() &&
                        authLogin != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Attendance()));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 2,
                            blurRadius: 0)
                      ],
                    ),
                    child:  Center(

                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      //toast navigation var

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const ForgotPassword()));
                    },
                    child: const Text(
                      "Reset Password",
                      style: TextStyle(color: Color(0xFF192855), fontSize: 18),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
