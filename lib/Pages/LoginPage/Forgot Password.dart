import 'package:attendance_api_project/Pages/LoginPage/LoginPage.dart';
import 'package:attendance_api_project/Pages/LoginPage/Verification.dart';
import 'package:attendance_api_project/controller/ResetPass/myResetService.dart';
import 'package:attendance_api_project/model/AuthReset.dart';
import 'package:flutter/material.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController idController = TextEditingController();

  AuthReset? authReset;

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20,right: 20,top: 150),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset("Assets/Images/Logo.png",height: 178,width: 186,),
                SizedBox(height: 5,),
                Text("Forgot Password ? Not a Problrm",style: TextStyle(color: Color(0xFF192855),fontSize: 18),),
                SizedBox(height: 10,),
                Text("Input your Employee ID Bellow",style: TextStyle(color: Color(0xFF949494),fontSize: 14),),
                SizedBox(height: 40,),
                Container(
                  height: _mediaquery.size.height *0.1,
                  child: TextFormField(
                    controller: idController,
                    decoration: InputDecoration(
                      hintText: "Employee Id",
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200,width: 2),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "";
                      }
                    },
                  ),
                ),
                InkWell(
                  onTap: ()async{
                    authReset = await MyResetService.mFetchUser(idController.text, );
                    setState(() {

                    });
                    if(_formkey.currentState!.validate() && authReset != null) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          Verify(id: idController.text.toString(),)));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(150),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                      ],
                    ),
                    child: Center(
                      child: Text("Next",style: TextStyle(
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
