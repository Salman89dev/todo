import 'package:flutter/material.dart';

class IntroPage02 extends StatelessWidget {
  const IntroPage02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/manageTask.png"),
              SizedBox(height: 70,),
              Text("Create daily routine",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.white),),
              SizedBox(height: 30,),
              Text("In Uptodo you can create your personalized routine to stay productive",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white,letterSpacing: 1),textAlign: TextAlign.center,),

            ],
          ),
        ),
      ),
    );
  }
}