import 'package:flutter/material.dart';
import '../../widgets/calendar.dart';
import 'package:first_flutter_app/pages/costum_card.dart';

class DoctorHome extends StatefulWidget {
  const DoctorHome({super.key});

  @override
  State<DoctorHome> createState() => _HomeHomeState();
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


class _HomeHomeState extends State<DoctorHome> {

  List<Carda> datalist=[
    Carda(leading:  AssetImage('assets/person/ghaissen.jpg'), title: "Sebai Ghaissen", subtitle: "8:00 -- 9:00"),
    Carda(leading:  AssetImage('assets/person/karim.jpg'), title: "Jegham Mohamed Karim ", subtitle: "9:30 -- 10:30"),
    Carda(leading:  AssetImage('assets/person/abir.jpg'), title: "Afess Abir", subtitle: "11:00 --12:00"),
    Carda(leading:  AssetImage('assets/person/majd.jpg'), title: "Bougares Majd", subtitle: "14:00 -- 15:00")];
  List<Carda> data1 =[
    Carda(leading: Icon(Icons.person_2_sharp), title: "New Patients", subtitle:"7"),
    Carda(leading: Icon(Icons.timer), title: "Pending Appointments ", subtitle: "4"),
    Carda(leading: Icon(Icons.new_label), title: "New Shared files", subtitle: "3"),
    Carda(leading: Icon(Icons.message), title: "Unread Messages", subtitle: "7")];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
          Calendar(),
          SizedBox(height: 12,),
          Text("Today's Appointments",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          Container(
            height: 90,
            child: PageView(
              children: List.generate(datalist.length, (index) => CostumCard(color:Colors.grey.shade50, padding: EdgeInsets.all(10), margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5), leading2: datalist[index].leading,leading1:null , title: datalist[index].title, subtitle: datalist[index].subtitle,onTap: () {
                // Function to be executed onTap
                print('Card tapped!');
              },) ,),
            ),),
          SizedBox(height: 10,),
          Text("Today's Checking",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(child: Column(children: List.generate(data1.length, (index) =>CostumCard(color: Color(0xFFD5E2EB), padding: EdgeInsets.all(0), margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7), leading1: data1[index].leading,leading2:null , title: data1[index].title, subtitle: data1[index].subtitle,onTap: () {
            // Function to be executed onTap
            print('Card tapped!');
          },)),),),
        ]));
  }
}