import 'package:flutter/material.dart';


class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
          automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right:10.0),
            child: new IconButton(
              icon: new Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () => Navigator.of(context).pop(),
          )
          ),
        ],
        ),
    );
  }
}
