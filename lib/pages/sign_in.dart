import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Sign_IN extends StatefulWidget {
  const Sign_IN({super.key});
  @override
  State<Sign_IN> createState() => _Sign_INState();

}

class _Sign_INState extends State<Sign_IN> {
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }
  void _retrievePassword() {
    String password = _passwordController.text;
    print(password);
    if(password=="11154155"){Navigator.pushNamed(context, '/home_patient');};
    if(password=="11154166"){Navigator.pushNamed(context, '/home_doctor');};
  }

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
                        Text('Welcome Back !',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                        Text('Your presence was dearly missed',style: TextStyle(color: Colors.grey,),) ,
                        SizedBox(height: 30,),
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
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: ("Password"),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0),)),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                            margin:EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 0.0) ,
                            alignment: Alignment.topRight,
                            child: Text('Forget Password?',style: TextStyle(color: Colors.grey,fontSize: 12),)
                        ),
                        SizedBox(height: 20,),
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
                            onPressed: _retrievePassword,
                            child:Text('Sign IN',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),),
                        ),
                      ])
              )
          )
        ])
    );
  }
}
