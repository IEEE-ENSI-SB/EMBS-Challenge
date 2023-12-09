import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeartBeat extends StatefulWidget {
  const HeartBeat({super.key});

  @override
  State<HeartBeat> createState() => _HeartBeatState();
}

class _HeartBeatState extends State<HeartBeat> {
  DateTime now=DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = '${now.hour}:${now.minute}:${now.second}';
    return Container(
      margin: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Container(
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
        child: Row(children: [
          Container(
            child: Lottie.asset('assets/animations/heartbeart.json'), height: 100,width: 200,),
          Column(children: [
            Text(formattedDate,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("84 BPM",style: TextStyle(color: Colors.redAccent,fontSize: 15,fontWeight: FontWeight.bold),),
          ],)
        ],),),
      Container(
        height: 110,
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
              image: AssetImage('assets/dashboard/heart_beats/Heart 1.png'),
              fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(12.0),)
        ),
       Container(
         height: 255,
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
            image: AssetImage('assets/dashboard/heart_beats/Heart 2.png'),
            fit: BoxFit.cover,),
          borderRadius: BorderRadius.circular(12.0),)
        ,),
          SizedBox(height: 10,)
    ],),);
  }
}
