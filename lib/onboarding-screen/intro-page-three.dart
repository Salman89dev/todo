import 'package:flutter/material.dart';

class IntroPage03 extends StatelessWidget {
  const IntroPage03({super.key});

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
              Image.asset("images/create.png"),
              SizedBox(height: 70,),
              Text("Orgonaize your tasks",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.white),),
              SizedBox(height: 30,),
              Text("You can organize your daily tasks by adding your tasks into separate categories",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white,letterSpacing: 1),textAlign: TextAlign.center,),

            ],
          ),
        ),
      ),
    );
  }
}