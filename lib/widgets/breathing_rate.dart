import 'package:flutter/material.dart';

class BreathingRate extends StatefulWidget {
  const BreathingRate({super.key});

  @override
  State<BreathingRate> createState() => _BreathingRateState();
}

class _BreathingRateState extends State<BreathingRate> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      children: [
        SizedBox(height: 15,),
        Container(
          width: 140.0,
          height: 140.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey.shade400, // Set border color here
              width: 2.0, // Set border width here
            ),
          ),
          child: CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/dashboard/breath_rate/breath1.jpg'),
          ),
        ),
      Container(
        margin: EdgeInsets.all(20),
        height: 400,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(2,2),
              color: Colors.grey.shade500,
            )
          ],
          image: DecorationImage(
            image: AssetImage('assets/dashboard/breath_rate/breath2.jpg'),
            fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(12.0),)
        ,)
    ],),);
  }
}

