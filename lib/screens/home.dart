import 'package:fit_streak/screens/myplans.dart';
import 'package:fit_streak/screens/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:fit_streak/screens/camera_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selecteditem = 1;
  var _pages = [my_profile(),Camerascreen(),myplans()];
  var _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   currentIndex: _selecteditem,
      //   onTap: (index){
      //     setState(() {
      //       _selecteditem = index;
      //       _pagecontroller.animateToPage(_selecteditem, duration: Duration(milliseconds: 200), curve: Curves.linear);});},
      //   items: <BottomNavigationBarItem> [
      //     BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      //     BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'camera'),
      //     BottomNavigationBarItem(icon: Icon(Icons.article),label: 'Plans'),
      //   ],
      // ),
      body: Center(
        child: PageView(
          children: _pages,
          onPageChanged: (index){
            setState(() {
              _selecteditem = index;
            });
          },
          controller: _pagecontroller,
        ),
      ),

    );

  }
}
