import 'package:flutter/material.dart';

class myplans extends StatefulWidget {
  @override
  _myplansState createState() => _myplansState();
}

class _myplansState extends State<myplans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Plans'),
              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios_sharp),
                onPressed: () => Navigator.of(context).pop(),
              )
          ),

    );
  }
}
