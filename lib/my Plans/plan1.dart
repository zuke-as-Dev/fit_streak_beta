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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
                children: <Widget> [
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
                              title: Text(
                                'Plan 1',
                              ),
                            ),
                            new Column(
                              children: <Widget> [
                                Center(
                                  child: Image.asset('assets/Fit.png'),
                                ),
                              ],
                            ),
                            new Column(
                              children: <Widget> [
                                Text(
                                  'its especially important when it comes to exercise, getting fit, getting healthy or losing weight. ... A fitness professional who motivates their clients will always get them to consistently perform better. Ultimately helping them reach their desired goals.',
                                  style: TextStyle(
                                  ),
                                ),],
                            ),
                            new Column(
                                children:<Widget> [
                                  ListTile(
                                    leading: Icon(Icons.fastfood_rounded),
                                    title: Text(
                                      'Diet',
                                    ),
                                  ),
                                ]
                            ),
                            new Column(
                              children: <Widget> [
                                Center(
                                  child: Image.asset('assets/salad.jpg'),
                                ),
                              ],
                            ),
                            new Column(
                              children: <Widget> [
                                Text(
                                  'Eating a healthy balanced diet accompanied by regular exercise is essential in maintaining physical and mental health and well-being. Not only are these effective in preventing excess weight gain or in maintaining weight loss, but healthier lifestyles are also associated with improved sleep and mood.',
                                  style: TextStyle(
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.directions_run),
                                  title: Text
                                    (
                                    'Exercise',
                                    style: TextStyle(

                                    ),
                                  ),
                                ),
                              ],
                            ),


                            new Column(
                              children: <Widget> [
                                Center(
                                  child: Image.asset('assets/exercise.jpg'),
                                ),
                              ],
                            ),


                            new Column(
                              children: <Widget> [
                                Text(
                                  ' Physical activity or exercise can improve your health and reduce the risk of developing several diseases like type 2 diabetes, cancer and cardiovascular disease. Physical activity and exercise can have immediate and long-term health benefits. Most importantly, regular activity can improve your quality of life.',
                                  style: TextStyle(
                                  ),
                                ),
                              ],
                            ),



                            Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Icon(Icons.circle),
                                  title: Text
                                    (
                                    'Mental Health',
                                    style: TextStyle(

                                    ),
                                  ),
                                ),
                              ],
                            ),

                            new Column(
                              children: <Widget> [
                                Center(
                                  child: Image.asset('assets/MH.jpg'),
                                ),
                              ],
                            ),

                            new Column(
                              children: <Widget> [
                                Text(
                                  'Meditation can produce a deep state of relaxation and a tranquil mind. During meditation, you focus your attention and eliminate the stream of jumbled thoughts that may be crowding your mind and causing stress. This process may result in enhanced            physical and emotional well-being. ',
                                  style: TextStyle(
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                  ),
                ]),
          ),
        )

    );
  }
}



