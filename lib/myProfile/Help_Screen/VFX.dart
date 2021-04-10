import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class user_vfx extends StatefulWidget {
  @override
  _user_dataState createState() => _user_dataState();
}

class _user_dataState extends State<user_vfx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'VFX',
        ),
      ),

      body: Center(
        child: SafeArea(
          child: Column(
            children: [

              RichText(
                text: TextSpan(
                  text: 'If you are in requirement of further help, Please click this link',
                  style: TextStyle(fontSize: 20, color:Colors.blue,fontStyle: FontStyle.normal),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch ('https://www.youtube.com/watch?v=khpL08_O1WE&ab_channel=AronChupa%26LittleSisNora');
                    },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
