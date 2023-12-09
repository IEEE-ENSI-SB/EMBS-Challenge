import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TodayTips extends StatefulWidget {
  const TodayTips({super.key});

  @override
  State<TodayTips> createState() => _TodayTipsState();
}

class _TodayTipsState extends State<TodayTips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 0),
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
      width: double.infinity,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(2,2),
            color: Colors.grey.shade500,
          )
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(children: [
        Row(children: [
          Lottie.asset('assets/animations/home_quote.json',height: 50),
          Text("Tips for today",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),),
        ],),
        Text("* You should have 30 min meditation "),
        //Text("* You should have 30 min meditation "),
      ],),);
    ;
  }
}
