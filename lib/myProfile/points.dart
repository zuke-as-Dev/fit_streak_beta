import 'package:flutter/material.dart';
class user_points extends StatefulWidget {
  @override
  _user_pointsState createState() => _user_pointsState();
}

class _user_pointsState extends State<user_points> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
            'user points',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 0, 10),
                  child: Container(
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/coin logo.png'),
                      radius: 35.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 10,10),
                  child: Container(
                    child: Text(
                      '250',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10.0 ,
              thickness: 2.0,
              color: Colors.white54,
            ),
            SizedBox(height: 20.0,),
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
              ) ,
              child: Card(
                elevation: 10.0,
                color:  Colors.grey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>  [
                    const ListTile(
                      leading: Icon(Icons.stars,size: 40,),
                      title: Text('Current point rate',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      subtitle: Text('1 Streak = 1 POINT',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 40.0,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
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
              ) ,
              child: Card(
                elevation: 10.0,
                color:  Colors.grey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>  [
                    const ListTile(
                      leading: Icon(Icons.stars,size: 40,),
                      title: Text('Incrimation rate',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      subtitle: Text('For every perfect streak you will have point incrimation of +0.5',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 40.0,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0,),
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
              ) ,
              child: Card(
                elevation: 10.0,
                color:  Colors.grey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>  [
                    const ListTile(
                      leading: Icon(Icons.stars,size: 40,),
                      title: Text('Point redemtion',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      subtitle: Text('Yet to decide',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 40.0,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
