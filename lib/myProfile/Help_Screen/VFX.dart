import 'package:flutter/material.dart';

class user_vfx extends StatefulWidget {
  @override
  _user_dataState createState() => _user_dataState();
}

class _user_dataState extends State<user_vfx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        title: Text(
          'VFX',
        ),
      ),

      body: Center(

        child: Column(
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
                children: [
                  TextSpan(text:'Boom Shaka Laka Boom Boom '),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
                children: [
                  TextSpan(text:'This is my rap, so bring out your wrap, yo!'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
