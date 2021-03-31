import 'package:flutter/material.dart';
//hello fuckin world
void main() => runApp(MaterialApp(
  home: home()
));
      // tanmay
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FitStreak Hey this is Godwin",
              style: TextStyle(
            fontSize: 20.0,
        ),
        ),
      ),
    );
  }
}
