import 'package:attendance_api_project/Pages/Profile/Edit%20Profile.dart';
import 'package:attendance_api_project/controller/profile/my_key%20_words.dart';
import 'package:attendance_api_project/controller/profile/user_model.dart';
import 'package:attendance_api_project/model/AuthLogin.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const api_profile());
}

class api_profile extends StatefulWidget {
  const api_profile({super.key});

  @override
  State<api_profile> createState() => _api_profileState();
}

class _api_profileState extends State<api_profile> {
  User? user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mLoadData().then((value) {
      setState(() {});
    });
  }

  AuthLogin? authLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: user == null
            ? const CircularProgressIndicator()
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 279,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFFE8100),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          Container(
                            height: 140,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  width: 4, color: Color(0xFF192855)),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.person_outline,
                                size: 100,
                              ),
                              onPressed: () {
                                {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15))),
                                          title: Column(
                                            children: [
                                              Text(
                                                "Upload Photo Using",
                                                style: TextStyle(
                                                    color: Color(0xFF192855),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                          height: 100,
                                                          width: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                width: 5,
                                                                color: Colors
                                                                    .grey
                                                                    .shade100),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: IconButton(
                                                              onPressed: () {
                                                                getImage();
                                                              },
                                                              icon: Icon(
                                                                Icons
                                                                    .camera_alt_outlined,
                                                                size: 60,
                                                                color: Color(
                                                                    0xFF192855),
                                                              ))),
                                                      Text(
                                                        "Camera",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                          height: 100,
                                                          width: 100,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                width: 5,
                                                                color: Colors
                                                                    .grey
                                                                    .shade100),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                          ),
                                                          child: IconButton(
                                                              onPressed: () {
                                                                uploadImage();
                                                              },
                                                              icon: Icon(
                                                                Icons
                                                                    .image_outlined,
                                                                size: 60,
                                                                color: Color(
                                                                    0xFF192855),
                                                              ))),
                                                      Text(
                                                        "Gallery",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 50,
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                }
                                ;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            user!.name.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            user!.employee_id.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.email,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("ID :"),
                              ),
                              Text(user!.id.toString()),
                            ],
                          ),
                          //SizedBox(height: 5,),
                          Row(
                            children: [
                              const Icon(
                                Icons.account_circle,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Employee :"),
                              ),
                              Text(user!.employee_id.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.drive_file_rename_outline,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Name :"),
                              ),
                              Text(user!.name.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.email,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Email :"),
                              ),
                              Text(user!.email.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.countertops,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Country :"),
                              ),
                              Text(user!.phone_country.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.phone_outlined,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Dial_code :"),
                              ),
                              Text(user!.phone_dial_code.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.phone_in_talk,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Phone :"),
                              ),
                              Text(user!.phone.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Gender :"),
                              ),
                              Text(user!.gender.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.engineering,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Department :"),
                              ),
                              Text(user!.department.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.flip_rounded,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Designation :"),
                              ),
                              Text(user!.designation.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.info_rounded,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Imei :"),
                              ),
                              Text(user!.imei.toString()),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.perm_contact_cal_outlined,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Role :"),
                              ),
                              Text(user!.role.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => UserProfileForm()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Edit Profile",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    // Text(user!.id.toString()),
                    // Text(user!.employee_id.toString()),
                    // Text(user!.name.toString()),
                    // Text(user!.email.toString()),
                    // Text(user!.phone_country.toString()),
                    // Text(user!.phone_dial_code.toString()),
                    // Text(user!.phone.toString()),
                    // Text(user!.gender.toString()),
                    // Text(user!.department.toString()),
                    // Text(user!.designation.toString()),
                    // Text(user!.imei.toString()),
                    // Text(user!.image.toString()),aita baki r shob add ase
                    // Text(user!.role.toString()),
                  ],
                ),
              ),
      ),
    );
  }

  Future<User?> mLoadData() async {
    var r = await http.get(
        Uri.parse(
            'https://api-attendance.grapview.com/api/v1/employee/profile'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          "api_key": '5267556B58703273357638792F423F45',
          "Authorization":
              "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYzZmFmZmQ2MTVlZjJhZTY4OTYxZDVhNSIsIm5hbWUiOiJNZCBBbC1BbWluIiwicm9sZSI6ImVtcGxveWVlIiwiaWF0IjoxNjc5NDg3MTc5LCJleHAiOjE2Nzk1NzM1Nzl9.xPPBa2CzNIFAUpsLhNYxe7xWrCm61bJ2X44cXf1Tj4s"
        });
    //print("our result:  ${r.body}");
    Map result = json.decode(r.body);
    print("our result: ${result["data"]["name"]}");
    //print("name: ${r.body["name"]}");
    user = User(
      id: result["data"][MyKeywords.id],
      employee_id: result["data"][MyKeywords.employee_id],
      name: result["data"][MyKeywords.name],
      email: result["data"][MyKeywords.email],
      phone_country: result["data"][MyKeywords.phone_country],
      phone_dial_code: result["data"][MyKeywords.phone_dial_code],
      phone: result["data"][MyKeywords.phone],
      gender: result["data"][MyKeywords.gender],
      department: result["data"][MyKeywords.department],
      designation: result["data"][MyKeywords.designation],
      imei: result["data"][MyKeywords.imei],
      image: result["data"][MyKeywords.image],
      role: result["data"][MyKeywords.role],
    );
    return user;

    // final profileUrl=Uri.parse('https://api-attendance.grapview.com/api/v1/employee/profile');
    // final response =await http.get(profileUrl);
    // print(response.statusCode);
    // print(response.body);

    // return json.decode(response.body);
  }

  void uploadImage() {}

  void getImage() {}
}
