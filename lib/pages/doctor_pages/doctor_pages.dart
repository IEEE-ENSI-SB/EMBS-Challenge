import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:first_flutter_app/pages/doctor_pages/doctor_home.dart';
import 'package:first_flutter_app/pages/doctor_pages/doctor_patients.dart';

class DoctorPages extends StatefulWidget {
@override
State<DoctorPages> createState() => _HomeState();
}

class _HomeState extends State<DoctorPages> {
List<String> labels = ['Home', 'Patients'];
List<Icon> icons = [Icon(Icons.home_outlined),  Icon(Icons.person),];
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
backgroundImage: AssetImage('assets/person/rihem.jpg'),
),),
title: Text("Hello, Doctor Rihem ",style: TextStyle(color: Colors.black,),),
backgroundColor:Color(0xFFD5E2EB) ,
actions: [
IconButton(onPressed: ()=>{}, icon:Icon(FontAwesomeIcons.exclamation), color: Colors.black ,),
IconButton(onPressed: ()=>{}, icon:Icon(FontAwesomeIcons.calendar), color: Colors.black ,),
],
),
body: PageView(
physics: NeverScrollableScrollPhysics(),
children: [DoctorHome(),DoctorPatients()],
onPageChanged: (index){
setState(() {
});},
controller: controller,
),
bottomNavigationBar:CurvedNavigationBar(
backgroundColor: Colors.transparent,
color: Color(0xFFD5E2EB),
buttonBackgroundColor: Colors.lightBlue.shade800,
height: 65,
items: List.generate(labels.length, (index) {
return CurvedNavigationBarItem(
child: icons[index],
label: labels[index],
);
}),
onTap: (index) => controller.animateToPage(index,duration: Duration(milliseconds: 400),curve: Curves.easeInOut,),
),);}}