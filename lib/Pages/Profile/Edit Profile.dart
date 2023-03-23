// import 'package:flutter/material.dart';
// import 'package:grapview_attendance/Pages/Profile/All%20Updated.dart';
// import 'package:grapview_attendance/controller/Update_profile/update_api_service.dart';
// import 'package:grapview_attendance/model/authModel.dart';
//
// class EditProfile extends StatefulWidget {
//   const EditProfile({Key? key}) : super(key: key);
//
//   @override
//   State<EditProfile> createState() => _EditProfileState();
// }
//
// class _EditProfileState extends State<EditProfile> {
//   List<String> items = <String>[
//     'Select Gender',
//     'Male',
//     'Female',
//     'Others',
//   ];
//   String dropdownValue = 'Select Gender';
//
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _phoneCountryController = TextEditingController();
//   final _phoneDialCodeController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _genderController = TextEditingController();
//   AuthUpdate? authUpdate;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(padding: EdgeInsets.only(top: 100, left: 20, right: 20)),
//             Center(
//               child: Container(
//                 height: 150,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(width: 5, color: Colors.white),
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//                 child: CircleAvatar(
//                   backgroundImage: AssetImage("Assets/Images/Rafi1.jpg"),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Text(
//               "Edit Your Profile",
//               style: TextStyle(fontSize: 25, color: Color(0xFF192855)),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(15)),
//                 Text(
//                   "Full Name :",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 260,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(150),
//                   ),
//                   child: TextField(
//                     controller: _nameController,
//                     decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                       border: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       hintText: "Name",
//                       hintStyle: TextStyle(color: Colors.grey.shade400),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(15)),
//                 Text(
//                   "Email :",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 260,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(150),
//                   ),
//                   child: TextField(
//                     controller: _emailController,
//                     decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                       border: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       hintText: "Email",
//                       hintStyle: TextStyle(color: Colors.grey.shade400),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(15)),
//                 Text(
//                   "phone_country :",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 260,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(150),
//                   ),
//                   child: TextField(
//                     controller: _phoneCountryController,
//                     decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                       border: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       hintText: "Select Country ",
//                       hintStyle: TextStyle(color: Colors.grey.shade400),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(15)),
//                 Text(
//                   "phone_dial_code :",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 260,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(150),
//                   ),
//                   child: TextField(
//                     controller: _phoneDialCodeController,
//                     decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                       border: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       hintText: "Country Code ",
//                       hintStyle: TextStyle(color: Colors.grey.shade400),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(15)),
//                 Text(
//                   "Phone No :",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(
//                   width: 24,
//                 ),
//                 Container(
//                   height: 45,
//                   width: 260,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(150),
//                   ),
//                   child: TextField(
//                     controller: _phoneController,
//                     decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                       border: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide:
//                             BorderSide(color: Colors.grey.shade200, width: 2),
//                         borderRadius: BorderRadius.circular(100),
//                       ),
//                       hintText: "Phone Number",
//                       hintStyle: TextStyle(color: Colors.grey.shade400),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.all(15)),
//                 Text(
//                   "Gender :",
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 SizedBox(
//                   width: 40,
//                 ),
//                 Container(
//                   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//                   height: 41,
//                   width: 260,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(150),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.grey.shade200,
//                           spreadRadius: 2,
//                           blurRadius: 0)
//                     ],
//                   ),
//                   child: DropdownButton<String>(
//                     borderRadius: BorderRadius.circular(12),
//                     dropdownColor: Colors.white,
//                     elevation: 1,
//                     underline: SizedBox(),
//                     isDense: true,
//                     isExpanded: true,
//                     onChanged: (String? newValue) {
//                       setState(() {
//                         _genderController.selection;
//                         dropdownValue = newValue!;
//                       });
//                     },
//                     value: dropdownValue,
//                     items: items.map<DropdownMenuItem<String>>(
//                       (String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       },
//                     ).toList(),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 60,
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 authUpdate = await UpdateApiService.updateM(
//                     _nameController.text,
//                     _emailController.text,
//                     _phoneCountryController.text,
//                     _phoneDialCodeController.text,
//                     _phoneController.text,
//                     _genderController.text);
//                 setState(() {});
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (c) => AllUpdated()));
//               },
//               child: Container(
//                 height: 50,
//                 width: 120,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(150),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.grey.shade200,
//                         spreadRadius: 2,
//                         blurRadius: 0)
//                   ],
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Update",
//                     style: TextStyle(
//                         color: Colors.orange,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:attendance_api_project/Pages/Profile/All%20Updated.dart';
import 'package:attendance_api_project/controller/Update_profile/update_api_service.dart';
import 'package:attendance_api_project/model/authModel.dart';
import 'package:flutter/material.dart';



class UserProfileForm extends StatefulWidget {
  const UserProfileForm({Key? key}) : super(key: key);

  @override
  _UserProfileFormState createState() => _UserProfileFormState();
}

class _UserProfileFormState extends State<UserProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneCountryController = TextEditingController();
  final _phoneDialCodeController = TextEditingController();
  final _phoneController = TextEditingController();
  final _genderController = TextEditingController();
  AuthUpdate? authUpdate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneCountryController,
                decoration: InputDecoration(
                  labelText: 'Bangladesh',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone country';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneDialCodeController,
                decoration: InputDecoration(
                  labelText: '+880',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone dial code';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(
                  labelText: '1xxxxxxxxxx',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _genderController,
                decoration: InputDecoration(
                  labelText: 'Gender Male?Female',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your gender';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () async {
                  authUpdate = await UpdateApiService.updateM(
                      _nameController.text,
                      _emailController.text,
                      _phoneCountryController.text,
                      _phoneDialCodeController.text,
                      _phoneController.text,
                      _genderController.text);
                  setState(() {});

                  if (_formKey.currentState!.validate()) {
                    // TODO: handle form submission
                  }
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>AllUpdated()));
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:update_profile/controller/update_api_service.dart';
// import 'package:update_profile/kasem.dart';
// import 'package:update_profile/model/authModel.dart';
//
// class UpdateScreen extends StatefulWidget {
//   const UpdateScreen({Key? key}) : super(key: key);
//
//   @override
//   State<UpdateScreen> createState() => _UpdateScreenState();
// }
//
// class _UpdateScreenState extends State<UpdateScreen> {
//   final TextEditingController _name = TextEditingController();
//   final TextEditingController _email = TextEditingController();
//   final TextEditingController _phone_country = TextEditingController();
//   final TextEditingController _phone_dial_code = TextEditingController();
//   final TextEditingController _phone = TextEditingController();
//   final TextEditingController _gender = TextEditingController();
//   AuthUpdate? authUpdate;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             TextFormField(
//               controller: _name,
//               decoration: InputDecoration(
//                 hintText: ("name"),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: _email,
//               decoration: InputDecoration(
//                 hintText: ("email"),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: _phone_country,
//               decoration: InputDecoration(
//                 hintText: ("country"),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: _phone_dial_code,
//               decoration: InputDecoration(
//                 hintText: ("country-code"),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: _phone,
//               decoration: InputDecoration(
//                 labelText: ("phone_number"),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: _gender,
//               decoration: InputDecoration(
//                 hintText: ("Male/Female"),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 authUpdate = await UpdateApiService.updateM(
//                     _name.text,
//                     _email.text,
//                     _phone_country.text,
//                     _phone_dial_code.text,
//                     _phone.text,
//                     _gender.text);
//                 setState(() {});
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (c) => kasem()));
//               },
//               child: Text("Save"),
//             ),
//             SizedBox(height: 10,),
//             authUpdate ==null?
//                 CircularProgressIndicator()
//                 :Text("message is : ${authUpdate!.message}"),
//           ],
//         ),
//       ),
//     );
//   }
// }

