import 'package:flutter/material.dart';

class HomeSeizure extends StatefulWidget {
  const HomeSeizure({super.key});

  @override
  State<HomeSeizure> createState() => _HomeSeizureState();
}

List<List<int>> selectedIndex=[[2,2],[2,2],[2,2]];
class _HomeSeizureState extends State<HomeSeizure> {

  List<String> lst=["YES","NO"];
  List<String> headding=["Before Seizure Symptoms","During Seizure Symptoms","After Seizure Symptoms:"];
  List<String> Q1=["Do you experience any warning signs or auras before a seizure? (e.g., strange sensations, smells, déjà vu)",
    "Do you experience a loss of consciousness during seizures?","After a seizure, do you experience a postictal state? (e.g., confusion, fatigue)"];
  List<String> Q2=["Have you noticed any changes in mood or emotions before a seizure? (e.g., anxiety, irritability)","How intense was this experience for you ?","Do you have difficulty remembering events that occurred before or during the seizure?"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Container(child:
        Column(children: [
          Column(
            children: List.generate(3, (index) => Container(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 15),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              decoration: BoxDecoration(
                color: Colors.grey.shade50,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 1,
                    offset: Offset(2,2),
                    color: Colors.grey.shade500,
                  )
                ],borderRadius: BorderRadius.circular(12.0),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text(headding[index],style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,),),
                  SizedBox(height: 20,),
                  Text(Q1[index],style: TextStyle(color: Colors.black,fontSize: 15),),
                  SizedBox(height: 15,),
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      customRadio(lst[0],0,index,0),
                      SizedBox(width: 10,),
                      customRadio(lst[1],1,index,0),
                    ],),),
                  SizedBox(height: 15,),
                  Text(Q2[index]),
                  SizedBox(height: 15,),
                  Container(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      customRadio(lst[0],0,index,1),
                      SizedBox(width: 10,),
                      customRadio(lst[1],1,index,1),
                    ],),),
                  SizedBox(height: 25,),
                ],
              ),)),),
             SizedBox(height: 30,),
          CircleAvatar(
              radius: 25.0,
              backgroundColor: Colors.blue,
              child:IconButton(onPressed: ()=>{}, icon: Icon(Icons.add,color: Colors.black,))
          ),
          SizedBox(height: 30,)
        ],),))
    ;
  }
  Widget customRadio(String txt,int index,int phase,int nb){
    return ElevatedButton(
        onPressed: ()=> {setState((){selectedIndex[phase][nb]=index ;})},
    style: ButtonStyle(
      backgroundColor:MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return selectedIndex[phase][nb] == index ? Colors.grey : Color(0xFFD5E2EB);
        },
      ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
    ),),
    side: MaterialStateProperty.all<BorderSide>(
    BorderSide(
     color: Colors.white10,
    ),),),
        child: Text(txt,style: TextStyle(color: Colors.black,)));
  }
}

