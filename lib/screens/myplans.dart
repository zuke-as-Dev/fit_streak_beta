import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/rendering.dart';

class myplans extends StatefulWidget {
  @override
  _myplansState createState() => _myplansState();
}

class _myplansState extends State<myplans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text(
              'My Plans'
          ),
        ),

        body: SingleChildScrollView(
          child: Center(

            child: Column(
              children: <Widget> [
                Container(

                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),

                    elevation: 14.0,

                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Current Plan'),
                          subtitle: Text('Active Plan'),
                        ),
                        new Column(
                          children: <Widget> [
                            Center(
                              child: Image.asset('assets/Fit1.png'),
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>  [
                            TextButton(
                              child: const Text(
                                'View Plan',
                              ),
                              onPressed: () {/*....*/},
                            ),
                            const SizedBox(width: 8.0),
                            TextButton(
                              child: const Text(
                                  'Upgrade'
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/upgrade');
                              },
                            ),
                          ],
                        )


                      ],
                    ),
                  ),


                ),








                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.tealAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Plan 1'),
                          subtitle: Text('Motivation Plan 1'),
                        ),
                        new Column(
                          children: <Widget> [
                            Center(
                              child: Image.asset('assets/Fit.png'),
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>  [
                            TextButton(
                              child: const Text(
                                'Buy Plan',
                              ),
                              onPressed: () {/*....*/},
                            ),
                            const SizedBox(width: 8.0),
                            TextButton(
                              child: const Text(
                                  'About'
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/plan1');
                              },
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),

                Container(

                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.tealAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Plan 2'),
                          subtitle: Text('Motivation Plan 2'),
                        ),
                        new Column(
                          children: <Widget> [
                            Center(
                              child: Image.asset('assets/Fit.png'),
                            ),
                          ],
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>  [
                            TextButton(
                              child: const Text(
                                'Buy Plan',
                              ),
                              onPressed: () {/*....*/},
                            ),
                            const SizedBox(width: 8.0),
                            TextButton(
                              child: const Text(
                                  'About'
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/plan2');
                              },
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                ),

                Container(

                  child: Column(

                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        color: Colors.tealAccent,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>  [
                            const ListTile(
                              leading: Icon(Icons.run_circle_outlined),
                              title: Text('Plan 3'),
                              subtitle: Text('Motivation Plan 3'),
                            ),
                            new Column(
                              children: <Widget> [
                                Center(
                                  child: Image.asset('assets/Fit.png'),
                                ),
                              ],
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>  [
                                TextButton(
                                  child: const Text(
                                    'Buy Plan',
                                  ),
                                  onPressed: () {/*....*/},
                                ),
                                const SizedBox(width: 8.0),
                                TextButton(
                                  child: const Text(
                                      'About'
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/plan3');
                                  },
                                ),
                              ],
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        )

    );
  }
}