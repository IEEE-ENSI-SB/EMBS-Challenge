import 'package:flutter/material.dart';

class Seizure extends StatefulWidget {
  const Seizure({super.key});

  @override
  State<Seizure> createState() => _SeizureState();
}

class _SeizureState extends State<Seizure> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 15,),
      Expanded(child: Row(children: [
        SizedBox(width: 10,),
        Expanded(child:Container(
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
              image: AssetImage('assets/dashboard/seizure/1.jpg'),
              fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(12.0),),
        ),),
        SizedBox(width: 15,),
        Expanded(child: Container(
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
              image: AssetImage('assets/dashboard/seizure/2.jpg'),
              fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(12.0),),
        ),),
        SizedBox(width: 10,),
      ],
      ),),
      SizedBox(height: 15,),
      Expanded(
        child: Container(
        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
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
            image: AssetImage('assets/dashboard/seizure/3.jpg'),
            fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(12.0),),
      ),),
      SizedBox(height: 35,)

    ],
    );
  }
}
