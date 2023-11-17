import 'package:ecommercetodo/WelcomePage.dart';
import 'package:ecommercetodo/onboarding-screen/intro-page-one.dart';
import 'package:ecommercetodo/onboarding-screen/intro-page-three.dart';
import 'package:ecommercetodo/onboarding-screen/intro-page-two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller=PageController();
  bool onLastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                onLastPage=(index==2);
              });
            },
            children: [
              IntroPage01(),
              IntroPage02(),
              IntroPage03(),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20,left: 20),
            alignment: Alignment.topLeft,
            child: GestureDetector(
                  onTap: ()
                  {
                    _controller.jumpToPage(2);
                  },
                  child: Text("SKIP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color.fromARGB(146, 255, 255, 255)))
                  ),
          ),

          Container(
            alignment: Alignment(0,0.2),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),

          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

              GestureDetector(
                onTap: ()
                {
                  _controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                },
                child: Text("BACK",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color:  Color.fromARGB(146, 255, 255, 255)))
                ),

                onLastPage?
                GestureDetector(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                              backgroundColor:Color.fromARGB(255, 135, 117, 255),
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                    ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){return WelcomePage();} ));
                  }, child: const Text("Get Started",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500,),))
                  ) :

                  
                  GestureDetector(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                              backgroundColor:Color.fromARGB(255, 135, 117, 255),
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                    ),
                    onPressed: (){
                    _controller.nextPage(duration:const  Duration(milliseconds: 500),
                     curve: Curves.easeIn);
                  }, child:const  Text("Next",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),))
                  ),
              ],
            ),
          )
          // dot indicators
        ],
      ),
    );
  }
}