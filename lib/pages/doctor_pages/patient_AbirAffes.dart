import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PatientAbir extends StatelessWidget {

  List<IconData> _icon=[Icons.message,Icons.analytics,FontAwesomeIcons.history,FontAwesomeIcons.tablets,FontAwesomeIcons.calendarCheck];
  List<String>  _text=["Messages","Dashboard","Seizure History","Treatments","Appoitments"];

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.grey.shade50,
      width: double.infinity,
      height: 800,child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/person/abir.jpg'),
          ),
          SizedBox(height: 20,),
          Text("Afess Abir",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Wrap(children:List.generate(4, (index) => Container(
            width: 150,
            height: 180,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFD5E2EB),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(2,2),
                  color: Colors.grey.shade500,)],
              borderRadius: BorderRadius.circular(12.0),),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(_icon[index],size: 50,),
                SizedBox(height: 25,),
                Text(_text[index],style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
              ],) ,)) ,),
          SizedBox(height: 10,),
          Container(decoration: BoxDecoration(
            color: Colors.lightBlue.shade800,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                offset: Offset(2,2),
                color: Colors.grey.shade500,)],
            borderRadius: BorderRadius.circular(12.0),),padding: EdgeInsets.all(20),child: Text("Turn Back",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),)

        ],),);
  }
}
