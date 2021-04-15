import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                    elevation: 14.0,

                    color: Colors.pink[600],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Current Plan'),
                          subtitle: Text('Active Plan'),
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
                              onPressed: () {/*....*/},
                            ),
                          ],
                        )

                      ],
                    ),
                  ),


                ),








                Container(
                  child: Card(
                    color: Colors.greenAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Plan 1'),
                          subtitle: Text('Motivation Plan 1'),
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
                    color: Colors.purpleAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Plan 2'),
                          subtitle: Text('Motivation Plan 2'),
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

                  child: Card(
                    color: Colors.yellowAccent,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>  [
                        const ListTile(
                          leading: Icon(Icons.run_circle_outlined),
                          title: Text('Plan 3'),
                          subtitle: Text('Motivation Plan 3'),
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


                ),

              ],
            ),
          ),
        )
    );
  }
}