import 'package:ecommercetodo/Login.dart';
import 'package:ecommercetodo/SignUp.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        // elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 4,
                child: Column(
                children: [
                    Text("Welcome to UpTodo",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w700,color: Colors.white),),
                    SizedBox(height: 30,),
                    Text("Please login to your account or create new account to continue",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white,letterSpacing: 1),textAlign: TextAlign.center,),
                ],
              )),
              Expanded(child: Container(
                width: double.infinity,
                // alignment: Alignment.bottomCenter,
                child: Column(
                  
                  children: [
                    Container(
                      width: double.infinity,
                      child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                              backgroundColor:Color.fromARGB(255, 135, 117, 255),
                              padding: EdgeInsets.symmetric(vertical: 25),
                      ),
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));

                    }, child: const Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1),)),
                    ),
                    SizedBox(height: 30,),

                    Container(
                      width: double.infinity,
                      child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.transparent,
                              padding:const  EdgeInsets.symmetric(vertical: 25),
                              side: const BorderSide(width: 2,color: Color.fromARGB(255, 135, 117, 255))
                      ),
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return SignUp();}));

                    }, child: const Text("CREATE ACCOUNT",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1),)),
                    ),


                  ],
                ),
              )),

            ],
          ),
        ),
      ),
    );
  }
}