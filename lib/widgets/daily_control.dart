import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class DailyControl extends StatefulWidget {
  const DailyControl({super.key});

  @override
  State<DailyControl> createState() => _DailyControlState();
}

class _DailyControlState extends State<DailyControl> {
  List<String> Control =["Mood","Stress","Water","Dietry"];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 0),
        padding: EdgeInsetsDirectional.all(25),
        width: double.infinity,
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Color(0xFFD5E2EB),
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
        child:SingleChildScrollView(child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Daily Control",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(4, (index) => Container(child:Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${Control[index]}",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,),),
                      Container(child: Row(children: [
                        IconButton(onPressed: ()=>{}, icon: Icon(FontAwesomeIcons.comment,size: 15,)),
                        IconButton(onPressed: ()=>{}, icon: Icon(FontAwesomeIcons.pen,size: 15,)),
                      ],),)

                    ],),
                  StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: 56,
                    size: 8,
                    padding: 0,
                    selectedColor: Colors.lightBlue.shade800,
                    unselectedColor: Colors.white,
                    roundedEdges: Radius.circular(10),
                  ),
                ],)
              ),
                //Text("Daily Control",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),)
              ),)
          ],),)
    );
  }
}
