import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/pages/patient_pages/patient_home.dart';
import 'package:first_flutter_app/pages/patient_pages/patient_analyses.dart';
import 'package:first_flutter_app/pages/patient_pages/patient_seizure.dart';
import 'package:first_flutter_app/pages/patient_pages/patient_chat.dart';
import 'package:first_flutter_app/pages/patient_pages/patient_device.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> labels = ['Home', 'Dashboard', 'Chat', 'Seizure', 'Device'];
  List<Icon> icons = [Icon(Icons.home_outlined), Icon(Icons.add_chart), Icon(Icons.chat_bubble_outline), Icon(FontAwesomeIcons.exclamation), Icon(Icons.device_hub),];
  final controller = PageController(initialPage: 0);
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          elevation: 0.0,
          leading: Container(
            padding: EdgeInsetsDirectional.fromSTEB(5, 2, 0, 0),
            child:
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/person/salma.jpg'),
            ),),
          title: Text("Hello, Salma",style: TextStyle(color: Colors.black,),),
          backgroundColor:Color(0xFFD5E2EB) ,
          actions: [
            IconButton(onPressed: ()=>{}, icon:Icon(FontAwesomeIcons.bell), color: Colors.black ,),
            IconButton(onPressed: ()=>{}, icon:Icon(FontAwesomeIcons.calendar), color: Colors.black ,),
          ],
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: [HomeHome(),HomeAnalysis(),HomeChat(),HomeSeizure(),HomePersonal()],
          onPageChanged: (index){
            setState(() {
            });},
          controller: controller,
        ),
        bottomNavigationBar:CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Color(0xFFD5E2EB),
          buttonBackgroundColor: Colors.lightBlue.shade800,
          height: 55,
          items: List.generate(labels.length, (index) {
            return CurvedNavigationBarItem(
              child: icons[index],
              label: labels[index],
            );
          }),
          onTap: (index) => controller.animateToPage(index,duration: Duration(milliseconds: 400),curve: Curves.easeInOut,),
        ),

    );
  }
}


