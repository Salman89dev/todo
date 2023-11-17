import 'package:ecommercetodo/SignUp.dart';
import 'package:ecommercetodo/home.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Login",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.w700),),
            SizedBox(height: 60,),


            Text("Username",style: TextStyle(fontSize: 16,color: Color.fromARGB(207, 255, 255, 255),fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Enter your Username",
                hintStyle: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 151, 151, 151))),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),

            SizedBox(height: 30,),
            Text("Password",style: TextStyle(fontSize: 16,color: Color.fromARGB(207, 255, 255, 255),fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            const TextField(
              style: TextStyle(color: Colors.white),
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your Password",
                hintStyle: TextStyle(color: Color.fromARGB(255, 83, 83, 83)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2,color: Color.fromARGB(255, 151, 151, 151))),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
            ),
            const SizedBox(height: 60,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:const  Color.fromARGB(255, 134, 136, 231),
                  padding: EdgeInsets.symmetric(vertical: 25)

                ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){ return HomePage();}));
              }, child: const Text("Login",style: TextStyle(fontSize: 18,color: Colors.white),)),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: 
              MainAxisAlignment.spaceBetween,
              children: [
                 Container(
                  width: 155,
                  height: 1,
                  color: Color.fromARGB(255, 151, 151, 151),
                ),

                Text("or",style: TextStyle(color: Color.fromARGB(255, 151, 151, 151),fontSize: 16),),
                 Container(
                  width: 155,
                  height: 1,
                  color: Color.fromARGB(255, 151, 151, 151),
                ),
              ],
            ),
            SizedBox(height: 40,),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  side: BorderSide(width: 2,color: Color.fromARGB(255, 135, 117, 255)),
                ),
                onPressed: (){}, icon: Image.asset("images/google.png"), label: Text("Login with Google",style: TextStyle(fontSize: 17,color: const Color.fromARGB(228, 255, 255, 255),fontWeight: FontWeight.w500))),
            ),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  side: BorderSide(width: 2,color: Color.fromARGB(255, 135, 117, 255)),
                ),
                onPressed: (){}, icon: Image.asset("images/apple.png"), label: Text("Login with Appe",style: TextStyle(fontSize: 17,color: const Color.fromARGB(228, 255, 255, 255),fontWeight: FontWeight.w500))),
            ),
            SizedBox(height: 80,),
            Container(
              alignment: Alignment.center,
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return SignUp();}));
              }, child: Text("Don’t have an account? Register",style: TextStyle(fontSize: 16,color: Color.fromARGB(255, 151, 151, 151)),)),
            )


          ],
        ),
      ),
    );
  }
}