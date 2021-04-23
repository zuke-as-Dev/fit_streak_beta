import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fit_streak/screens/Paint.dart';

class myplans extends StatefulWidget {
  @override
  _myplansState createState() => _myplansState();
}

class _myplansState extends State<myplans> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
              'My Plans'
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(

              child: Column(
                  children: <Widget> [
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        gradient: new LinearGradient(
                          colors: <Color>[
                            Colors.teal.withOpacity(1.0),
                            Colors.blue[200].withOpacity(1.0),
                            Colors.purple.withOpacity(1.0),
                          ],
                          stops: [
                            0.0,
                            0.5,
                            1.0,
                          ],
                        ),
                      ),
                      child: Card(
                        elevation: 14.0,
                        color: Colors.grey[700],
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
                    // SizedBox(width: 30.0,),

                    Container(
                      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      height: 379,
                      // width: 390,
                      child: ListView(
                          scrollDirection: Axis.vertical,
                          children: <Widget> [
                            Container(
                              height: height,
                              width: 300.0,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.teal,
                                      Colors.purple,
                                    ]
                                ),
                              ),
                              child: ClipRRect(
                                child: CustomPaint(
                                  size: Size(width,height),
                                  painter: CardCustomPainter(),
                                  child: Stack(
                                    children: <Widget> [
                                      Positioned(

                                        child: Image.asset(
                                          'assets/img.png',
                                          color: Colors.purpleAccent.withOpacity(0.3),
                                          width: width ,
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(height: 20,),
                                          Center(

                                          ),
                                          Text(
                                            'Plan 1',
                                            style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          detailWidget(
                                            icon: Icons.run_circle_outlined,
                                            text: 'Motivation Plan ',
                                          ),
                                          detailWidget(
                                              text: 'Description'

                                          ),
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.end,

                                            children: <Widget> [
                                              TextButton(
                                                child: const Text(
                                                  'Buy Now',
                                                ),
                                                onPressed: () {Navigator.pushNamed(context, '/Plan 1');},
                                              ),
                                              SizedBox(width: 5,),
                                              TextButton(
                                                child: const Text(
                                                    'About'
                                                ),
                                                onPressed: () {Navigator.pushNamed(context, '/plan1');},
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Container(

                              height: height,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(30),
                                gradient: LinearGradient(
                                    colors: [
                                      Colors.teal,
                                      Colors.purple,
                                    ]
                                ),
                              ),
                              child: ClipRRect(
                                child: CustomPaint(
                                  size: Size(width,height),
                                  painter: CardCustomPainter(),
                                  child: Stack(
                                    children: <Widget> [
                                      Positioned(
                                        bottom: 10,
                                        left: 10,
                                        child: Image.asset(
                                          'assets/img.png',
                                          color: Colors.purpleAccent.withOpacity(0.3),
                                          width: width * 0.2,
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(height: 50,),
                                          Center(

                                          ),
                                          Text(
                                            'Plan 2',
                                            style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          detailWidget(
                                            icon: Icons.run_circle_outlined,
                                            text: 'Motivation Plan ',
                                          ),
                                          detailWidget(
                                              text: 'Description'
                                          ),
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.end,

                                            children: <Widget> [
                                              TextButton(
                                                child: const Text(
                                                  'Buy Now',
                                                ),
                                                onPressed: () {Navigator.pushNamed(context, '/Plan 2');},
                                              ),
                                              SizedBox(width: 5,),
                                              TextButton(
                                                child: const Text(
                                                    'About'
                                                ),
                                                onPressed: () {Navigator.pushNamed(context, '/plan2');},
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),

                            Container(
                              height: height,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.teal,
                                    Colors.purple
                                  ],
                                ),
                              ),
                              child: ClipRRect(
                                child: CustomPaint(
                                  size: Size(width,height),
                                  painter: CardCustomPainter(),
                                  child: Stack(
                                    children: <Widget> [
                                      Positioned(
                                        bottom: 10,
                                        left: 10,
                                        child: Image.asset(
                                          'assets/img.png',
                                          color: Colors.purpleAccent.withOpacity(0.3),
                                          width: width * 0.7,
                                        ),
                                      ),
                                      Column(
                                        children: <Widget>[
                                          SizedBox(height: 20,),
                                          Center(

                                          ),
                                          Text(
                                            'Plan 3',
                                            style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          detailWidget(
                                            icon: Icons.run_circle_outlined,
                                            text: 'Motivation Plan ',
                                          ),
                                          detailWidget(
                                              text: 'Description'
                                          ),
                                          new Row(
                                            mainAxisAlignment: MainAxisAlignment.end,

                                            children: <Widget> [
                                              TextButton(

                                                child: const Text(
                                                  'Buy Now',
                                                ),
                                                onPressed: () {Navigator.pushNamed(context, '/Plan 2');},
                                              ),
                                              SizedBox(width: 5,),
                                              TextButton(
                                                child: const Text(
                                                    'About'

                                                ),
                                                onPressed: () {Navigator.pushNamed(context, '/plan3');},
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),),


                          ]
                      ),
                    ),

                  ]
              )
          ),
        )
    );
  }}











Widget detailWidget({IconData icon, String text}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: Colors.white70,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}