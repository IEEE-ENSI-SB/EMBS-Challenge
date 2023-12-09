import 'package:flutter/material.dart';

class SleepHours extends StatefulWidget {
  const SleepHours({super.key});

  @override
  State<SleepHours> createState() => _SleepHoursState();
}

class _SleepHoursState extends State<SleepHours> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10),
      child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(2,2),
                  color: Colors.grey.shade900,
                )
              ],
              image: DecorationImage(
                image: AssetImage('assets/dashboard/sleep/Nap.jpg'),
                fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12.0),)
            ,),
          SizedBox(width: 20,),
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(2,2),
                  color: Colors.grey.shade900,
                )
              ],
              image: DecorationImage(
                image: AssetImage('assets/dashboard/sleep/Sleep.jpg'),
                fit: BoxFit.cover,),
              borderRadius: BorderRadius.circular(12.0),)
            ,)
        ],),
        SizedBox(height: 25,),
        Container(
          height: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(2,2),
                color: Colors.grey.shade900,
              )
            ],
            image: DecorationImage(
              image: AssetImage('assets/dashboard/sleep/Hours of sleep.png'),
              fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(12.0),)
          ,),
        SizedBox(height: 25,),
      ],
    ),);
  }
}
