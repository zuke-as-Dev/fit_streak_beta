import 'package:flutter/material.dart';


class my_profile extends StatefulWidget {
  @override
  _my_profileState createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
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
        body: Container(
          child: Row(
            children: <Widget> [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 4, 0, 0),
                    child: Text(
                          'Unfit human',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                    child: CircleAvatar(
                      radius: 30.0,
                    ),
                  ),
                ],
              ),
            ],
        ),

        )
    );
  }
}
