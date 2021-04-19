import 'package:flutter/material.dart';


class my_profile extends StatefulWidget {
  @override
  _my_profileState createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
  @override
  Widget build(BuildContext context) {
    final icon1=new Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,10),
            child: IconButton(icon: Icon(Icons.local_fire_department_outlined,
                size: 50.0,
                color: Colors.orange[800]),
                onPressed: (){
                  Navigator.pushNamed(context, '/user_streak');
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,0,0),
            child: Text('130'),
          )
        ],
      ),
    );
    final icon2= new Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,10),
            child: IconButton(icon:
                /// scale this image in place of point icon sunny
            // Image.asset(
            //   'assets/coin logo.png',
            // ),
            // iconSize: 100.0,
            Icon(Icons.stars,
                size: 50.0,
                color: Colors.orange[600]),
                onPressed: (){
                  Navigator.pushNamed(context, '/user_points');
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,10,0,0),
            child: Text('130'),
          )
        ],
      ),
    );
    var card = new Card(
      color: Colors.blue,
      child: new Column(
        children: <Widget>[
          new ListTile(
            title: TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/user_data');
            },
              icon: Icon(Icons.edit,
                color: Colors.white,
                size: 40,),
              label: Text('Edit Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),),
            ),

          ),
          new Divider(color: Colors.white, indent: 16.0,endIndent: 16.0),
          new ListTile(
            title: TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/user_progress');
            },
              icon: Icon(Icons.bar_chart_rounded,
                color: Colors.white,
                size: 40,),
              label: Text('Progress Stats',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),),
            ),

          ),
          new Divider(color: Colors.white, indent: 16.0,endIndent: 16.0),
          new ListTile(
            title: TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/calender');
            },
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(0,0,20,0),
                child: Icon(Icons.calendar_today,
                    color: Colors.white,
                    size: 40.0),
              ),
              label: Text('Calendar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                ),),
            ),

          ),
          new Divider(color: Colors.white, indent: 16.0,endIndent: 16.0),
          new ListTile(
            title: TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/help');
            },
              icon: Icon(Icons.info_outline,
                  color: Colors.white,
                  size: 40.0),
              label: Text('Help',
                  style: TextStyle(fontSize: 20.0,
                      color: Colors.white)),
            ),

          ),
          new Divider(color: Colors.white, indent: 16.0,endIndent: 16.0),
          new ListTile(
            title: TextButton.icon(onPressed: (){
              Navigator.pushNamed(context, '/rating');
            },
              icon: Icon(Icons.rate_review,
                color: Colors.white,
                size: 30,),
              label: Text('Rate us',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                ),),
            ),

          ),

        ],
      ),
    );
    final sizedBox = new Container(
      margin: new EdgeInsets.only(left: 10.0, right: 10.0),
      child: new SizedBox(

        child: card,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.settings,
            size: 30,
            color: Colors.white,),
              onPressed: (){
                Navigator.pushNamed(context, '/app_settings');
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,4,0,0),
                    child: Text(
                      'Unfit human',
                      style: TextStyle(
                        fontSize: 28.0,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black,
              ),

              Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundImage: AssetImage('assets/fat_simpsons.png'),
                      radius: 40.0,
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right:100.0),
                      child: icon1,
                    ),

                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right:30.0),
                      child: icon2,
                    ),

                  ),
                ],

              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(height: 1.0,),

              sizedBox,
            ],
          ),
        ),
      ),
    );

  }
}
