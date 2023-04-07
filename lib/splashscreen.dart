import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_work_session/boilercode.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "MYPAGE")));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("Classico", style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),)),
      ),
    );
  }
}