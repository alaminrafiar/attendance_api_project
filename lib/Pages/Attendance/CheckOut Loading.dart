import 'package:attendance_api_project/Pages/Attendance/Attendance.dart';
import 'package:attendance_api_project/widgets/drawer.dart';
import 'package:flutter/material.dart';

class CheckingOut extends StatefulWidget {
  const CheckingOut({Key? key}) : super(key: key);

  @override
  State<CheckingOut> createState() => _CheckingOutState();
}

class _CheckingOutState extends State<CheckingOut> {
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
        title: const Text('CHECK OUT',style: TextStyle(color: Color(0xFF192855),fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,
      ),
      drawer: ReusableDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(40)),
            const Center(child: Text("February 14, 2023",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Color(0xFF192855)),)),
            const Text("5 : 30  PM",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Color(0xFF192855)),),
            const SizedBox(height: 10,),
            const Text("Hello Muksitur",style: TextStyle(fontSize: 20,color: Color(0xFFFE8100)),),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (c) =>  const Attendance()));
              },
              child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(width: 5,color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset("Assets/Images/Logo8.png",fit: BoxFit.cover,)
              ),
            ),
            const SizedBox(height: 20,),
            const Text("CHECKING OUT...",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Color(0xFF192855)),),
          ],
        ),
      ),

    );
  }
}
