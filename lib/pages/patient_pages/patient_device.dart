import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePersonal extends StatefulWidget {
  const HomePersonal({super.key});

  @override
  State<HomePersonal> createState() => _HomePersonalState();
}

class _HomePersonalState extends State<HomePersonal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
      Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: 220,
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(2,2),
            color: Colors.grey.shade500,
          )
        ],
        borderRadius: BorderRadius.circular(12.0),),
       child: Column(children: [
         Text("Connected Device" ,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
         SizedBox(height: 40,),
         Row(children: [
           Container(
             width: 40.0,
             height: 40.0,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               border: Border.all(
                 color: Colors.grey.shade400, // Set border color here
                 width: 2.0, // Set border width here
               ),
             ),
             child: CircleAvatar(
               radius: 60.0,
               child: Icon(Icons.watch),
             ),
           ),
           SizedBox(width: 20,),
           Text("SAMSUNG 125KL",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
         ],),
         SizedBox(height: 20,),
         Row(children: [
           Container(
             width: 40.0,
             height: 40.0,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               border: Border.all(
                 color: Colors.grey.shade400, // Set border color here
                 width: 2.0, // Set border width here
               ),
             ),
             child: CircleAvatar(
               radius: 70.0,
               child: Icon(FontAwesomeIcons.headset),
             ),
           ),
           SizedBox(width: 20,),
           Text("Head 75895LMP",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),)
         ],),
       ],)
      ,),
      SizedBox(height: 20,),
    ],);
  }
}
