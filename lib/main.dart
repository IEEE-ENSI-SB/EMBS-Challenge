import 'package:flutter/material.dart';
import 'pages/patient_pages/patient_pages.dart';
import 'pages/doctor_pages/doctor_pages.dart';
import 'pages/loading.dart';
import 'pages/sign_in.dart';
import 'pages/sign_up.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context) => Loading(),
        '/home_patient':(context) => Home(),
        '/home_doctor':(context) => DoctorPages(),
        '/sign_up':(context) => Sign_UP(),
        '/sign_in':(context) => Sign_IN(),
      },
  ));
}

