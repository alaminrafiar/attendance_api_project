import 'package:attendance_api_project/Pages/Attendance/Check%20Out.dart';
import 'package:attendance_api_project/widgets/drawer.dart';
import 'package:flutter/material.dart';


class CheckingIn extends StatefulWidget {
  const CheckingIn({Key? key}) : super(key: key);

  @override
  State<CheckingIn> createState() => _CheckingInState();
}

class _CheckingInState extends State<CheckingIn> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset("Assets/Images/Logo6.png",height: 10,width: 10,),
          onTap: (){
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('CHECK IN',style: TextStyle(color: Color(0xFF192855),fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),
      drawer: ReusableDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(40)),
            Center(child: Text("February 14, 2023",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xFF192855)),)),
            Text("5 : 30  PM",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color(0xFF192855)),),
            SizedBox(height: 10,),
            Text("Hello Muksitur",style: TextStyle(fontSize: 20,color: Color(0xFFFE8100)),),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (c) =>  CheckOut()));
              },
              child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5,color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset("Assets/Images/Logo7.png")
              ),
            ),
            SizedBox(height: 20,),
            Text("CHECKING IN...",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Color(0xFF949494)),),
          ],
        ),
      ),

    );
  }
}
