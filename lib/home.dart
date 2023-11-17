import 'package:ecommercetodo/CalendersPage.dart';
import 'package:ecommercetodo/focuse.dart';
import 'package:ecommercetodo/index.dart';
import 'package:flutter/material.dart';

/// Flutter code sample for [NavigationBar].




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: appBar(),


      backgroundColor: Colors.black,

      bottomNavigationBar: NavigationBar(
        
        backgroundColor: Color.fromARGB(255, 54, 54, 54),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white,

        selectedIndex: currentPageIndex,

        destinations: const <Widget>[
          NavigationDestination(
            
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined,color: Colors.white,size: 30,),
            label: 'Index',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_month),
            icon:Icon(Icons.calendar_month,color: Colors.white,size: 30,),
            label: 'Calendar',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add),
            icon:Icon(Icons.add,color: Colors.white,size: 30,),
            label: 'Add Todo',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.access_time),
            icon: Icon(Icons.access_time,color: Colors.white,size: 30,),
            label: 'Focuse',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person,color: Colors.white,size: 30,),
            label: 'Profile',
          ),
        ],
      ),


      body: <Widget>[
        /// Home page
        IndexPage(),
        CalendersPage(),
        FocusePage(),
        Container(child: Text("focuse"),),
        Container(child: Text("Profile",style:TextStyle(color: Colors.white),),),


      ][currentPageIndex],

      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),

            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.admin_panel_settings),
              onTap: ()
              {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Fav View"),
              leading: Icon(Icons.heart_broken),
              onTap: ()
              {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Text("Index",),
      actions: [
        Image.asset("images/user.png")
      ],
    );
  }
}
