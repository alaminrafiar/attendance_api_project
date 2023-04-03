import 'package:attendance_api_project/model/Auth_Set_Pass.dart';
import 'package:attendance_api_project/set_pas_word_service/set_password_service.dart';
import 'package:flutter/material.dart';

class SetPassScreen extends StatefulWidget {
  final String id;
  final String otp;

  const SetPassScreen({Key? key, required this.id, required this.otp})
      : super(key: key);

  @override
  State<SetPassScreen> createState() => _SetPassScreenState();
}

class _SetPassScreenState extends State<SetPassScreen> {
  // final TextEditingController _emPloYeId = TextEditingController();
  // final TextEditingController _otp = TextEditingController();
  final _formfield = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _newPass = TextEditingController();
  bool passToggle = true;
  Auth_Set_Pass? auth_set_pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 160),
          child: Column(
          children: [
            Image.asset("Assets/Images/Logo.png",
            height: 178,
              width: 186,
            ),
            // TextField(
            //   controller: _emPloYeId,
            //   decoration: InputDecoration(hintText: "id"),
            // ),

            // TextField(
            //   controller: _otp,
            //   decoration: InputDecoration(hintText: "otp"),
            // ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 160,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _pass,
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
                      } else if (_pass.text.length < 6) {
                        return "Password must be 6 characters or more";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _newPass,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                      hintText: "Re-Type_Password",
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
                      } else if (_newPass.text.length < 6) {
                        return "Password must be 6 characters or more";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),

            ElevatedButton(
                onPressed: () async {
                  auth_set_pass = await SetPaswordService.methodset(
                      widget.id, widget.otp, _pass.text, _newPass.text);
                  setState(() {});
                  if (_formfield.currentState!.validate() &&
                      auth_set_pass != null) {
                   // Navigator.push(
                       // context,
                      //  MaterialPageRoute(
                            //builder: (context) => Attendance()));
                  }
                },
                child: Text("setpass")),
            SizedBox(
              height: 20,
            ),
            auth_set_pass == null
                ? CircularProgressIndicator()
                : Text("message is :${auth_set_pass!.message}"),
          ],
        ),
        ),
      ),
    );
  }
}
