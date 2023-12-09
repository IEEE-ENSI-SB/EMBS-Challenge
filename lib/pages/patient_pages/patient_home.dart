import 'package:flutter/material.dart';
import '../../widgets/daily_control.dart';
import '../../widgets/calendar.dart';
import '../../widgets/today_tips.dart';
import 'package:first_flutter_app/pages/costum_card.dart';

class HomeHome extends StatefulWidget {
  const HomeHome({super.key});

  @override
  State<HomeHome> createState() => _HomeHomeState();
}
class Carda{
  final dynamic leading;
  final String title;
  final String subtitle;
  Carda({
    required this.leading,
    required this.title,
    required this.subtitle,
  });
}

class _HomeHomeState extends State<HomeHome> {
  List<Carda> datalist=[
    Carda(leading:  Icon(Icons.sunny), title: "AT 8:00", subtitle: "Carbamazepine"),
    Carda(leading:  Icon(Icons.sunny), title: "AT 12:00 ", subtitle: "Valporic"),
    Carda(leading:  Icon(Icons.shield_moon), title: "AT 6:00", subtitle: "Lamotrigine"),
    Carda(leading:  Icon(Icons.shield_moon), title: "AT 21:00", subtitle: "Valporic")];
  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(children: [
      Calendar(),
      SizedBox(height:15,),
      Text("Daily Treatments",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
      SizedBox(height:20,),
      Container(
        height: 95,
        child: PageView(
          children: List.generate(datalist.length, (index) => CostumCard(color:Colors.grey.shade50, padding: EdgeInsets.all(10), margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5), leading1: datalist[index].leading,leading2:null , title: datalist[index].title, subtitle: datalist[index].subtitle,onTap: () {
            // Function to be executed onTap
            print('Card tapped!');
          },) ,),
        ),),
      SizedBox(height:25,),
      Expanded(flex: 2, child: DailyControl(),),
      SizedBox(height:25,),
      TodayTips(),
      SizedBox(height: 30,),
      ]));
  }
}
