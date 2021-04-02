import 'package:flutter/material.dart';


class my_profile extends StatefulWidget {
  @override
  _my_profileState createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
          automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.settings,
          size: 30,
          color: Colors.white,),
              onPressed: (){}),
          Padding(
              padding: const EdgeInsets.only(right:10.0),
            child: new IconButton(
              icon: new Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () => Navigator.of(context).pop(),
          )
          ),
        ],

        ),
        body: Container(
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

                  Row(
                    children: [
                      SizedBox(width: 15.0 ),
                    CircleAvatar(
                          radius: 30.0,
                        ),
                      SizedBox(width: 160),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,0,10),
                            child: IconButton(icon: Icon(Icons.local_fire_department_outlined,
                            size: 50.0,
                            color: Colors.orange[800]),
                                onPressed: (){}),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:15.0),
                            child: Text('130'),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

        ),


    );
  }
}
