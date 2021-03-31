import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: home()
));
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fit-streak",
              style: TextStyle(
            fontSize: 20.0,
        ),
        ),
      ),
    );
  }
}
