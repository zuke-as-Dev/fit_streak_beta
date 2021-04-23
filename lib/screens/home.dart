import 'package:fit_streak/screens/myplans.dart';
import 'package:fit_streak/screens/myprofile.dart';
import 'package:flutter/material.dart';
import 'package:fit_streak/screens/camera_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1.0,
        backgroundColor: Colors.grey[850],
        currentIndex: _selecteditem,
        onTap: (index){
          setState(() {
            _selecteditem = index;
            _pagecontroller.animateToPage(_selecteditem, duration: Duration(milliseconds: 200), curve: Curves.linear);});},
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: 'camera'),
          BottomNavigationBarItem(icon: Icon(Icons.article),label: 'Plans'),
        ],
      ),
      body: Container(
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
// _openPopup(context) {
//   Alert(
//       context: context,
//       title: "User Data",
//       content: Column(
//         children: <Widget>[
//           TextField(
//             decoration: InputDecoration(
//               icon: Icon(Icons.account_circle),
//               labelText: 'User Name',
//             ),
//           ),
//           TextField(
//
//             decoration: InputDecoration(
//               icon: Icon(Icons.calendar_today_rounded),
//               labelText: 'DOB',
//             ),
//           ),
//           TextField(
//
//             decoration: InputDecoration(
//               icon: Icon(Icons.watch_later_outlined),
//               labelText: 'Time Slot',
//             ),
//           ),
//           TextField(
//
//             decoration: InputDecoration(
//               icon: Icon(Icons.help),
//               labelText: 'Gender',
//             ),
//           ),
//           TextField(
//
//             decoration: InputDecoration(
//               icon: Icon(Icons.height),
//               labelText: 'height',
//             ),
//           ),
//         ],
//       ),
//       buttons: [
//         DialogButton(
//           onPressed: () => Navigator.pop(context),
//           child: Text(
//             "LOGIN",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//         )
//       ]).show();
// }
