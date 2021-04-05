import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class help extends StatefulWidget {
  @override
  _helpState createState() => _helpState();
}

// ignore: camel_case_types
class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            'HELP',
        ),
      ),
      body:Center(
        child: Column(
        children: <Widget>[
          Container(
            child: RichText(
              text: TextSpan(
            style: TextStyle(fontSize: 20,fontStyle: FontStyle.normal),
                children: [
                  TextSpan(text:'Please select one of the below options to continue further'),
                ],
      ),



            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Card(
          color: Colors.blue,
          child: new Column(
              children: <Widget>[
          new ListTile(
          title: TextButton.icon(onPressed: (){
        Navigator.pushNamed(context,'/tutorial');
        },
          icon: Icon(Icons.menu_book,
            color: Colors.white,
            size: 40,),
          label: Text('Tutorial',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0
            ),),
        ),

      ),
                new Divider(color: Colors.white, indent: 16.0,endIndent: 16.0),
                new ListTile(
                  title: TextButton.icon(onPressed: (){
                    Navigator.pushNamed(context, '/VFX');
                  },
                    icon: Icon(Icons.surround_sound_sharp,
                      color: Colors.white,
                      size: 40,),
                    label: Text('VFX',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),),
                  ),

                ),
                new Divider(color: Colors.white, indent: 16.0,endIndent: 16.0),
                new ListTile(
                  title: TextButton.icon(onPressed: (){
                    Navigator.pushNamed(context, '/detail');
                  },
                    icon: Icon(Icons.book_online_outlined,
                      color: Colors.white,
                      size: 40,),
                    label: Text('Detail Working',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),),
                  ),

                ),

        ],),),
    ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: RichText(
              text: new TextSpan(
                text: 'If you are in requirement of further help, Please click this link',
                style:new TextStyle(fontSize: 20,color: Colors.blue),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { launch('https://google.com');
                  }, ),

          ),
    ),],
    ),
      ),
    );
  }
}
