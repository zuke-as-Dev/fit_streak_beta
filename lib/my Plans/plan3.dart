import 'package:flutter/material.dart';
class plan3 extends StatefulWidget {
  @override
  _plan3State createState() => _plan3State();
}

class _plan3State extends State<plan3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text(
            'plan3',
          ),
        ),

        body: Center(
          child: Column(
              children: <Widget> [
                Container(
                    child: Card(
                      color: Colors.yellowAccent,
                      child: new Column(
                        children: <Widget>[
                          new ListTile(
                            title: Text(
                                'Plan 3'
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
