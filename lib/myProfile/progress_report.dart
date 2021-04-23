import 'package:fit_streak/progress/chart.dart';
import 'package:flutter/material.dart';
class user_progress extends StatefulWidget {
  @override
  _user_progressState createState() => _user_progressState();
}

class _user_progressState extends State<user_progress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
            'user progress',
        ),
      ),
      body: Container(

          child: Graph()
      ),

    );;
  }
}
