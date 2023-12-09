import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.grey.shade50,
                    backgroundImage: AssetImage('assets/Logo.png'),
                  ),
                  Text('Welcome to EpiCare !',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                      Text('Empower Your Journey.', style: TextStyle(fontSize: 15,color: Colors.grey ),),
                      Text('EpiCare Your Trusted Epilepsy Companion', style: TextStyle(fontSize: 15,color: Colors.grey  ),)
                      ],
                    )
                    ),
                    SizedBox(height: 25),
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
                           onPressed: ()=>{Navigator.pushNamed(context, '/sign_in')},
                           child:Text('Sign IN',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),),
                        ),
                      SizedBox(height: 10),
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
                          onPressed: ()=>{Navigator.pushNamed(context, '/sign_up')},
                          child:Text('Sign UP',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),),
                        ),
                  SizedBox(height: 10),
                        SizedBox(height: 20),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            alignment: Alignment.center,
                            width: double.infinity,
                            child:Text('------------------------   OR   ------------------------',style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal,color: Colors.grey),),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.facebook),
                              iconSize: 35,
                              onPressed: ()=>{},
                              ),
                            SizedBox(width: 10),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.google),
                              iconSize: 30,
                              onPressed: ()=>{},
                            ),
                          ],
                        )

    ]
            ),
          );


  }
}
