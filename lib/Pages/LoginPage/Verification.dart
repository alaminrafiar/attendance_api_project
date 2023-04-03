
import 'package:attendance_api_project/Pages/LoginPage/setpassword.dart';
import 'package:attendance_api_project/model/auth_verify.dart';
import 'package:attendance_api_project/verifyService/verify_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Verify extends StatefulWidget {

  final String id;

  const Verify({Key? key, required this.id}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

  final TextEditingController _otpVerify = TextEditingController();

  final _formfield =GlobalKey<FormState>();

   bool  passToggle = true;

  Auth_veridy? auth_veridy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                Image.asset("Assets/Images/Logo.png",
                height: 178,
                  width: 186,
                ),
                SizedBox(
                  height: 20,
                ),
                // TextField(
                //   controller: _otpVerify,
                //   decoration: InputDecoration(hintText: "otpcode"),
                // ),

              Container(
                height: 160,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _otpVerify,
                      decoration: InputDecoration(
                        hintText: "OTP-CODE",
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade200,width: 2),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "flase";
                      }
                        },
                      )
                  ],
                ),
              ),

                // SizedBox(
                //   height: 20,
                // ),

                InkWell(
                    onTap: () async {
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>
                          SetPassScreen(id: widget.id, otp: _otpVerify.text,))); //() ai tar viote lekhte hoi ja ja ami porer page a use korte chai na
                      auth_veridy = await VerifyService.verifyMethod(

                        widget.id,  //aita lekhte hoi pore page a na lekhar jonno

                        _otpVerify.text,
                      );
                      setState(() {});
                      if(_formfield.currentState!.validate() && auth_veridy != null) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            Verify(id: _otpVerify.text.toString(),)));
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
                    child: const Center(
                      child: Text(
                        "verify",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                // auth_veridy == null
                //     ? CircularProgressIndicator()
                //     : Text("message is : ${auth_veridy!.status}"),
                //

                // TextButton(
                //   onPressed: (){
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (c) =>  ResetPassword()));
                //   },

                // ),
                ),],

            ),
          ),
        ),
      ),
    );
  }
}

