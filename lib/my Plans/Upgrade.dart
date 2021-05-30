import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
class upgrade extends StatefulWidget {
  @override
  _upgradeState createState() => _upgradeState();
}

class _upgradeState extends State<upgrade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'upgrade',
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[




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
                          child: Image.asset('assets/Fit1.png'),
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
                          child: Image.asset('assets/Fit1.png'),
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
                              child: Image.asset('assets/Fit1.png'),
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

                          ],
                        )

                      ],
                    ),
                  ),
                ],
              ),


            ),

          ], ),

      ),
    );
  }
}
