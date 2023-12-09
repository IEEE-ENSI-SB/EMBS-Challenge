import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../widgets/seizure.dart';
import '../../widgets/breathing_rate.dart';
import '../../widgets/sleep_hours.dart';
import '../../widgets/heartbeat.dart';

class HomeAnalysis extends StatefulWidget {
  const HomeAnalysis({super.key});

  @override
  State<HomeAnalysis> createState() => _HomeAnalysisState();
}

class _HomeAnalysisState extends State<HomeAnalysis> {
  List<String> Analysis=["Seizure","Heartbeat","Sleep hours","Breathing rate",];
  List<Widget> icons = [
    Icon(FontAwesomeIcons.bolt),
    Icon(Icons.monitor_heart),
    Icon(FontAwesomeIcons.solidSmile),
    Icon(FontAwesomeIcons.lungs),
  ];
   int curentPge=0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(Analysis.length, (index) =>
          Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                CircleAvatar(
                    radius: 30.0,
                    backgroundColor: curentPge==index ?Colors.blue:Color(0xFFD5E2EB),
                    child: icons[index]
                ),
                Text(Analysis[index]),
              ],),)
          ),),
      Expanded(child: PageView(
        children: [Seizure(),HeartBeat(),SleepHours(),BreathingRate()],
        onPageChanged: (index){
          print(index);
          setState(() { curentPge=index;
          });},

      ),),
    ],);
  }
}
