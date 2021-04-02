import 'package:flutter/material.dart';
class user_streak extends StatefulWidget {
  @override
  _user_streakState createState() => _user_streakState();
}

class _user_streakState extends State<user_streak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
            'user streak',
        ),
      ),

    );;
  }
}
