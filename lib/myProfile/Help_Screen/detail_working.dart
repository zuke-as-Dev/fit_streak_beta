import 'package:flutter/material.dart';
class detail_working extends StatefulWidget {
  @override
  _user_dataState createState() => _user_dataState();
}

class _user_dataState extends State<detail_working> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        title: Text(
          'Detail Working',
        ),
      ),
      body: Center(

        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
                children: [
                  TextSpan(text:'No details to your sexuality will be provided '),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
                children: [
                  TextSpan(text:'If you are in doubt, you are gay '),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
