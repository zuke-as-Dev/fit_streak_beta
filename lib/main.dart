import 'package:flutter/material.dart';
//hello fuckin world
void main() => runApp(MaterialApp(
  home: home()
));
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FitStreak",
              style: TextStyle(
            fontSize: 20.0,
        ),
        ),
      ),
    );
  }
}
