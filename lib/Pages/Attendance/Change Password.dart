import 'package:attendance_api_project/Pages/Attendance/After%20Change%20Password.dart';
import 'package:attendance_api_project/controller/change_pass_controller/change_pass_api_service.dart';
import 'package:flutter/material.dart';


import '../../model/auth_change.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  AuthChangepass? authChangepass;

  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "Assets/Images/Logo.png",
                height: 178,
                width: 186,
              )),
              Text(
                "Set Your New Password",
                style: TextStyle(color: Color(0xFF192855)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Old password",
                style: TextStyle(color: Color(0xFF949494)),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: TextFormField(
                  controller: _oldPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: "Old Password",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password id Required";
                    } else if (_oldPasswordController.text.length < 6) {
                      return "Password must be ^ characters or more";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "New password",
                style: TextStyle(color: Color(0xFF949494)),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: TextFormField(
                  controller: _newPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: "New Password",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password id Required";
                    } else if (_oldPasswordController.text.length < 6) {
                      return "Password must be ^ characters or more";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Retype New password",
                style: TextStyle(color: Color(0xFF949494)),
              ),
              SizedBox(height: 10),
              Container(
                height: 45,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(150),
                ),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    hintText: "Re New Password",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please confirm your new password';
                    }
                    if (value != _newPasswordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                ),

              SizedBox(height: 50),
              TextButton(
                onPressed: () async {
                  authChangepass = await ChangePassApiService.methodChPas(
                      _oldPasswordController.text,
                      _newPasswordController.text,
                      _confirmPasswordController.text);
                  setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => PasswordSet()));
               if (_formKey.currentState!.validate()){
                 //call change password API
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
                  child: Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
