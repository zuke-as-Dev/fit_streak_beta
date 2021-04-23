import 'package:flutter/material.dart';
class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    var card = new Container(
      child: Column(
        children: <Widget>[
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
              color: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '');
                },
                  icon: Icon(Icons.image,
                    color: Colors.white,
                    size: 40,),
                  label: Text('My Snaps',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                ),

              ),
            ),
          ),
          Divider(indent: 16.0,endIndent: 16.0,color: Colors.white,),
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
              color: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '');
                },
                  icon: Icon(Icons.sd_card,
                    color: Colors.white,
                    size: 40,),
                  label: Text('Storage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                ),

              ),
            ),
          ),
          Divider(indent: 16.0,endIndent: 16.0,color: Colors.white,),
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
              color: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '');
                },
                  icon: Icon(Icons.article,
                      color: Colors.white,
                      size: 40.0),
                  label: Text('Permissions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                    ),),
                ),

              ),
            ),
          ),
          Divider(indent: 16.0,endIndent: 16.0,color: Colors.white,),
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
              color: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '');
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
          Divider(indent: 16.0,endIndent: 16.0,color: Colors.white,),
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
              color: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '');
                },
                  icon: Icon(Icons.info,
                    color: Colors.white,
                    size: 30,),
                  label: Text('More Information',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                    ),),
                ),

              ),
            ),
          ),
          Divider(indent: 16.0,endIndent: 16.0,color: Colors.white,),
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
              color: Colors.grey[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: new ListTile(
                title: TextButton.icon(onPressed: (){
                  Navigator.pushNamed(context, '');
                },
                  icon: Icon(Icons.delete,
                    color: Colors.white,
                    size: 30,),
                  label: Text('Clear Data',
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
      height: MediaQuery.of(context).size.height*0.9,
      child: SingleChildScrollView(
          child: card),
    );
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'App Settings',
        ),
      ),
      body:  sizedBox,

    );
  }
}
