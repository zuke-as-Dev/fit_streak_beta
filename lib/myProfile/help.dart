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
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'HELP',
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color>[
                    Colors.teal.withOpacity(1.0),
                    Colors.blue[200].withOpacity(1.0),
                    Colors.purple.withOpacity(1.0),
                  ],
                  stops: [
                    0.0,
                    0.5,
                    1.0,
                  ],
                ),
              ) ,
              child: Card(
                color: Colors.grey[700],
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
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color>[
                    Colors.teal.withOpacity(1.0),
                    Colors.blue[200].withOpacity(1.0),
                    Colors.purple.withOpacity(1.0),
                  ],
                  stops: [
                    0.0,
                    0.5,
                    1.0,
                  ],
                ),
              ) ,
              child: Card(
                color: Colors.grey[700],
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
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: <Color>[
                    Colors.teal.withOpacity(1.0),
                    Colors.blue[200].withOpacity(1.0),
                    Colors.purple.withOpacity(1.0),
                  ],
                  stops: [
                    0.0,
                    0.5,
                    1.0,
                  ],
                ),
              ) ,
              child: Card(
                color: Colors.grey[700],
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
