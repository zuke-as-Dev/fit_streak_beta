import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

  // void getdata(){
  //  Future.delayed(Duration(seconds : 0),(){
  //    Navigator.pushReplacementNamed(context, '/home');
  //
  //  });
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   getdata();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cf.png'),
              fit: BoxFit.cover,
            )
          ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: CircleAvatar(
                radius: 90.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/logo3.png'),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  'Fit Streak',
                  style: TextStyle(
                    fontSize: 45.0,
                    color: Colors.grey,
                    fontFamily: 'conthrax',
                  ),
                ),
              ),
            ),
            SizedBox(height: 60.0),
            SpinKitRing(
              color: Colors.white,
              size: 110.0,
              lineWidth: 10.0,
        ),
          ],
        ),
    //     child: Center(
    //       child: SpinKitRing(
    //       color: Colors.white,
    //       size: 90.0,
    //       lineWidth: 10.0,
    // ),
    //     ),

          // child: Container(
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/bh.jpg'),
          //       fit: BoxFit.cover,
          //     )
          //   ),
          //   ),
        ),
      ),
    );
  }
}
