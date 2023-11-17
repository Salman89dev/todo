import 'dart:async';
// import 'package:ecommercetodo/SignUp.dart';
import 'package:ecommercetodo/onboarding_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds, then navigate to the login page
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/splash.png"),
              SizedBox(height: 15,),
              Text("UpTodo",style: TextStyle(fontSize: 42,fontWeight:FontWeight.w800,color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}