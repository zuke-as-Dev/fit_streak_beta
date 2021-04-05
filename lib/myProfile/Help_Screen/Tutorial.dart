import 'package:flutter/material.dart';
class user_tuto extends StatefulWidget {
  @override
  _user_dataState createState() => _user_dataState();
}

class _user_dataState extends State<user_tuto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        title: Text(
          'Tutorial',
        ),
      ),
    body: Center(

      child: Column(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
              children: [
                TextSpan(text:'The tutorial is currently unavailable. '),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
              children: [
                TextSpan(text:'Please go to the previous page '),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
