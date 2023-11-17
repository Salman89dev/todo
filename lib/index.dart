import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/Checklist.png"),
              Text("What do you want to do today?",style: TextStyle(color: const Color.fromARGB(223, 255, 255, 255),fontSize: 20),),
              SizedBox(height: 15,),
              TextButton(onPressed: (){}, child: Text("Tap + to add your tasks",style: TextStyle(color: const Color.fromARGB(213, 255, 255, 255),fontSize: 17),))
            ],
          ),
        ),
      ),
    );
  }
}