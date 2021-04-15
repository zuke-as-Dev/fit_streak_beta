import 'package:flutter/material.dart';
class plan2 extends StatefulWidget {
  @override
  _plan2State createState() => _plan2State();
}

class _plan2State extends State<plan2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'plan2',
          ),
        ),
        body: Center(
          child: Column(
              children: <Widget> [
                Container(
                    child: Card(
                      color: Colors.purpleAccent,
                      child: new Column(
                        children: <Widget>[
                          new ListTile(
                            title: Text(
                                'Plan 2'
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ]),
        )

    );;
  }
}
