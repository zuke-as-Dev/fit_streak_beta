

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  SizedBox(width: 50.0),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/menu');
                  },
                      child: Icon(Icons.person,
                        color: Colors.deepOrange,
                        size: 40.0,
                      )),
                  SizedBox(width: 130.0),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, '/myplans');
                  },
                      child: Icon(Icons.article_outlined,
                        color: Colors.deepOrange,
                        size: 40.0,
                      ))
                ],
              ),
            ),
          ],
        ),

      ),
    );

  }
}
