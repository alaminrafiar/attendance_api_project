import 'package:attendance_api_project/Pages/LoginPage/LoginPage.dart';
import 'package:attendance_api_project/Pages/LoginPage/Reset%20Password.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final _formfieldkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 150),
          child: Form(
            key: _formfieldkey,
            child: Center(
              child: Column(
                children: [
                  Image.asset("Assets/Images/Logo.png",height: 178,width: 186,),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text("We have sent a verification code to 01XXXXXXXXX Put the OTP to verify.",style: TextStyle(color: Color(0xFF192855),fontSize: 15),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't get code?",style: TextStyle(color: Color(0xFF192855),fontSize: 15),),
                      TextButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) =>  Verify()));
                      }, child: Text("Resend",style: TextStyle(color: Color(0xFF192855),fontSize: 18,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(150),bottomLeft: Radius.circular(150)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(150),bottomLeft: Radius.circular(150)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(150),bottomLeft: Radius.circular(150)),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "";
                              }
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "";
                              }
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "";
                              }
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            onChanged: (value){
                              if (value.length == 1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(150),bottomRight: Radius.circular(150)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(150),bottomRight: Radius.circular(150)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(150),bottomRight: Radius.circular(150)),
                              ),
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return "";
                              }
                            },
                          ),
                        ),



                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(
                    onPressed: (){
                      if(_formfieldkey.currentState!.validate()){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) =>  ResetPassword()));
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(150),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade200,spreadRadius: 1,blurRadius: 0)
                        ],
                      ),
                      child: Center(
                        child: Text("Verify",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(height: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Back to",style: TextStyle(fontSize: 18,color: Colors.grey),),
                      TextButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) =>  LoginPage()));
                      }, child: Text("Log In",style: TextStyle(color: Color(0xFF192855),fontSize: 18),)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


