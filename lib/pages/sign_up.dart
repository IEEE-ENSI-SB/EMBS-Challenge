import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Sign_UP extends StatefulWidget {
  const Sign_UP({super.key});

  @override
  State<Sign_UP> createState() => _Sign_UPState();

}
int selectedIndex=2;
class _Sign_UPState extends State<Sign_UP> {
  List<String> lst=["Doctor","Patient"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFD5E2EB),iconTheme: IconThemeData(color: Colors.black), ),
        body: Stack(children: [
          Column(
            children: [
              Expanded(child: Container(color: Color(0xFFFAFAFA))),
              Positioned(child: Lottie.asset('assets/animations/sign_up.json'), bottom:0,),
              Container(
                height: 100,
                color:Color(0xFFD5E2EB) ,)
            ],
          ),
          SafeArea(
              child:SingleChildScrollView(
                  child:Column(
                      crossAxisAlignment:CrossAxisAlignment.center ,
                      children: [
                        SizedBox(height: 100,),
                        Text('Get Started !',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                        Text('Create your account now ',style: TextStyle(color: Colors.grey,),) ,
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child:TextField(
                            decoration: InputDecoration(
                                labelText: ("Full Name"),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child:TextField(
                            decoration: InputDecoration(
                                labelText: ("Mail"),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child:TextField(
                            decoration: InputDecoration(
                                labelText: ("Password"),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child:TextField(
                            decoration: InputDecoration(
                                labelText: ("Identity"),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            customRadio(lst[0],0),
                            SizedBox(width: 30,),
                            customRadio(lst[1],1),
                          ],),),
                        SizedBox(height: 35,),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFD5E2EB)),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.black,width: 1.5),),),),
                            onPressed: ()=>{Navigator.pushNamed(context, '/home')},
                            child:Text('Sign UP',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),),
                        ),
                      ])
              )
          )
        ])
    );
  }

  Widget customRadio(String txt,int index){
    return ElevatedButton(
        onPressed: () {
          setState(() {
            selectedIndex = index;
          });
        },
        style: ButtonStyle(
          backgroundColor:MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              return selectedIndex == index ? Colors.grey : Color(0xFFD5E2EB);
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.black,
            ),),),
        child: Text(txt,style: TextStyle(color: Colors.black,fontSize: 15)));
  }
}


