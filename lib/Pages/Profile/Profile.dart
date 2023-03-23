import 'package:attendance_api_project/Pages/Profile/Edit%20Profile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  File? image;
  final _picker = ImagePicker();

  Future getImage()async{
    final pickedFile = await _picker.pickImage(source: ImageSource.camera, imageQuality: 80);
    if(pickedFile!= null){
      image = File(pickedFile.path);
      setState(() {

      });
    }else{
      print('No image selected');
    }
  }
  Future uploadImage()async{
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if(pickedFile!= null){
      image = File(pickedFile.path);
      setState(() {

      });
    }else{
      print('No image selected');
    }
  }

  double screenHeight = 0;
  double screenWidth = 0;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight/3.1,
            width: screenWidth,
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
                    border: Border.all(width: 4,color: Color(0xFF192855)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.person_outline,size: 100,),
                    onPressed: (){
                      {
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                            title: Column(
                              children: [
                                Text("Upload Photo Using",style: TextStyle(color: Color(0xFF192855),fontWeight: FontWeight.bold),),
                                SizedBox(height: 30,),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height : 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 5,color: Colors.grey.shade100),
                                              borderRadius: BorderRadius.circular(100),
                                            ),
                                            child: IconButton(onPressed: (){
                                              getImage();
                                            }, icon: Icon(Icons.camera_alt_outlined,size: 60,color: Color(0xFF192855),))),
                                        Text("Camera",style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),
                                     SizedBox(width: 40,),
                                    Column(
                                      children: [
                                        Container(
                                            height : 100,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 5,color: Colors.grey.shade100),
                                              borderRadius: BorderRadius.circular(100),
                                            ),
                                            child: IconButton(onPressed: (){
                                              uploadImage();
                                            }, icon: Icon(Icons.image_outlined,size: 60,color: Color(0xFF192855),))),
                                        Text("Gallery",style: TextStyle(color: Colors.grey),),
                                      ],
                                    ),                                    ],
                                ),
                                SizedBox(height: 50,),

                              ],
                            ),
                          );
                        });
                      };
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Text("Muksitur Rahman Rafi",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                Text("EID : GV003",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w300),),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: screenWidth /1,
            height: screenHeight/2,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.email_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Email : muksitur35-466@diu.edu.bd",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.phone_in_talk,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Phone No : +8801734128544",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.date_range_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Date of Birth : 31/10/2000",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.generating_tokens_rounded,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Gender : Male",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.shopping_basket_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Demartment : Software Engineering",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.dehaze_sharp,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Designation : Software Engineer Apprentice",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.email_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Email : muksitur35-466@diu.edu.bd",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.phone_in_talk,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Phone No : +8801734128544",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.date_range_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Date of Birth : 31/10/2000",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.generating_tokens_rounded,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Gender : Male",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.shopping_basket_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Demartment : Software Engineering",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.dehaze_sharp,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Designation : Software Engineer Apprentice",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.generating_tokens_rounded,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Gender : Male",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.shopping_basket_outlined,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Demartment : Software Engineering",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Icon(Icons.dehaze_sharp,color: Colors.orange,),
                            SizedBox(width: 20,),
                            Text("Designation : Software Engineer Apprentice",style: TextStyle(color: Color(0xFF949494),fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          TextButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) =>  UserProfileForm()));
            },
            child: Container(
              height: 50,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200,spreadRadius: 2,blurRadius: 0)
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit,color: Colors.orange,),
                  SizedBox(width: 10,),
                  Text("Edit Profile",style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
