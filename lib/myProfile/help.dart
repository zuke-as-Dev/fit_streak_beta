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
              child: Card(
                color: Colors.blueAccent,
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      title: Text('TUTORIAL',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),

                      ),
                      subtitle: TextButton.icon(onPressed: (){
                        Navigator.pushNamed(context, '/tutorial');
                      }, icon: Icon(Icons.menu_book),
                        label: Text('Please click on this to get a brief \n'
                            'description of the application.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),


                    ),

                  ],),),
            ),
            Container(
              child: Card(
                color: Colors.blueAccent,
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      title: Text('VFX',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),

                      ),
                      subtitle: TextButton.icon(onPressed: (){
                        Navigator.pushNamed(context, '/VFX');
                      }, icon: Icon(Icons.menu_book),
                        label: Text('This contains info-graphic videos to\n'
                            ' help you understand better.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),


                    ),

                  ],),),
            ),
            Container(
              child: Card(
                color: Colors.blueAccent,
                child: new Column(
                  children: <Widget>[
                    new ListTile(
                      title: Text('DETAILED WORKING',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                        ),

                      ),
                      subtitle: TextButton.icon(onPressed: (){
                        Navigator.pushNamed(context, '/detail');
                      }, icon: Icon(Icons.menu_book),
                        label: Text('Select this for a step by step\n'
                            ' procedure on the working.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),


                    ),

                  ],),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: RichText(
                text: new TextSpan(
                  text: 'If you are in requirement of further '
                      'help, Please click this link',
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
