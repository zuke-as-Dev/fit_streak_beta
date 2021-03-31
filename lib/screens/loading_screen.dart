import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg.png'),
              fit: BoxFit.cover,
            )
          ),
              child: Center(
                child: SpinKitRing(
                color: Colors.white,
                size: 90.0,
                lineWidth: 10.0,
        ),
              ),
      ),
        ),

    );
  }
}
