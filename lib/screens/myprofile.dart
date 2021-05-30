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
            child: Text('130',
                style:TextStyle(
                    color: Colors.white
                ) ),
          )
        ],
      ),
    );
    final icon2= new Container(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(20,0,0,0),
              // child: TextButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, '/points');
              //   },
              //   child: CircleAvatar(
              //       backgroundColor: Colors.transparent,
              //       backgroundImage:AssetImage('assets/coin logo.png',),
              //       radius: 30.0,
              //   // iconSize: 100.0,
              //   // Icon(Icons.stars,
              //   //     size: 50.0,
              //   //     color: Colors.orange[600]),
              //   //     onPressed: (){
              //   //       Navigator.pushNamed(context, '/user_points');
              //   //     }),
              //   ),
              // ),
              // ),
              child:IconButton(
                iconSize: 45,
                onPressed: (){
                  Navigator.pushNamed(context, '/user_points');
                },
                icon: Image.asset('assets/coin logo.png',),
              )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,2,0,0),
            child: Text('130',
              style: TextStyle(
                color: Colors.white,
              ),),
          ),
        ],
      ),
    );
    var card = new Container(
      color: Colors.transparent,
      child: new Column(
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(
            //   // gradient: new LinearGradient(
            //   //   colors: <Color>[
            //   //     Colors.teal.withOpacity(1.0),
            //   //     Colors.blue[200].withOpacity(1.0),
            //   //     Colors.purple.withOpacity(1.0),
            //   //   ],
            //   //   stops: [
            //   //     0.0,
            //   //     0.5,
            //   //     1.0,
            //   //   ],
            //   // ),
            // ) ,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey[700],
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/edituser');
                },
                  icon: Icon(Icons.edit,
                    color: Colors.white,
                    size: 40,),
                  label: Text('Edit Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                ),

              ),
            ),
            height: 100,
          ),
          Container(
            // decoration: BoxDecoration(
            //   gradient: new LinearGradient(
            //     colors: <Color>[
            //       Colors.teal.withOpacity(1.0),
            //       Colors.blue[200].withOpacity(1.0),
            //       Colors.purple.withOpacity(1.0),
            //     ],
            //     stops: [
            //       0.0,
            //       0.5,
            //       1.0,
            //     ],
            //   ),
            // ) ,
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey[700],
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/user_progress');
                },
                  icon: Icon(Icons.bar_chart_rounded,
                    color: Colors.white,
                    size: 40,),
                  label: Text('Progress Stats',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                ),

              ),
            ),
          ),

          Container(
            // decoration: BoxDecoration(
            //   gradient: new LinearGradient(
            //     colors: <Color>[
            //       Colors.teal.withOpacity(1.0),
            //       Colors.blue[200].withOpacity(1.0),
            //       Colors.purple.withOpacity(1.0),
            //     ],
            //     stops: [
            //       0.0,
            //       0.5,
            //       1.0,
            //     ],
            //   ),
            // ) ,
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey[700],
              child: new ListTile(
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
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                ),

              ),
            ),
          ),
          Container(
            // decoration: BoxDecoration(
            //   gradient: new LinearGradient(
            //     colors: <Color>[
            //       Colors.teal.withOpacity(1.0),
            //       Colors.blue[200].withOpacity(1.0),
            //       Colors.purple.withOpacity(1.0),
            //     ],
            //     stops: [
            //       0.0,
            //       0.5,
            //       1.0,
            //     ],
            //   ),
            // ) ,
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey[700],
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/help');
                },
                  icon: Icon(Icons.info_outline,
                      color: Colors.white,
                      size: 40.0),
                  label: Text('Help',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0,
                          color: Colors.white)),
                ),

              ),
            ),
          ),
          Container(
            // decoration: BoxDecoration(
            //   gradient: new LinearGradient(
            //     colors: <Color>[
            //       Colors.teal.withOpacity(1.0),
            //       Colors.blue[200].withOpacity(1.0),
            //       Colors.purple.withOpacity(1.0),
            //     ],
            //     stops: [
            //       0.0,
            //       0.5,
            //       1.0,
            //     ],
            //   ),
            // ) ,
            height: 100,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.grey[700],
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '/rating');
                },
                  icon: Icon(Icons.rate_review,
                    color: Colors.white,
                    size: 30,),
                  label: Text('Rate us',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                    ),),
                ),

              ),
            ),
          ),

        ],
      ),
    );
    final sizedBox = new Container(
      child: SingleChildScrollView(
          child: card),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
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
          color: Colors.grey[850],
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
                          color: Colors.white
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
                      padding: const EdgeInsets.only(right:10.0),
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
