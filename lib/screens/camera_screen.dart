import 'package:flutter/material.dart';

class camersscreen extends StatefulWidget {
  @override
  _camersscreenState createState() => _camersscreenState();
}

class _camersscreenState extends State<camersscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Camera',
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.deepOrange
          ),
        ),
      ),
    );
  }
}
