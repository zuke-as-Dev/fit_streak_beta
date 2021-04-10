import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class user_tuto extends StatefulWidget {
  @override
  _user_dataState createState() => _user_dataState();
}

class _user_dataState extends State<user_tuto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                text: 'If you are in requirement of further help, Please click this link',
                style: TextStyle(fontSize: 20,color:Colors.blue,fontStyle: FontStyle.normal),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { launch ('https://google.com');
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
