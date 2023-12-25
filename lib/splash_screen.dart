import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_page/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(child: Text('Classic', style: TextStyle(fontSize: 34,
              fontWeight: FontWeight.w700,
              color: Colors.white)
          ),
          ),),);
    }
}