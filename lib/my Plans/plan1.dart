import 'package:flutter/material.dart';
class plan1 extends StatefulWidget {
  @override
  _plan1State createState() => _plan1State();
}

class _plan1State extends State<plan1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'Plan 1',
          ),
        ),
        body: Center(
          child: Column(
              children: <Widget> [
                Container(
                    child: Card(
                      color: Colors.greenAccent,
                      child: new Column(
                        children: <Widget>[
                          new ListTile(
                            title: Text(
                                'Plan 1'
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ]),
        )
    );
  }
}
