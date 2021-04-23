import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;
final Gradient gradient = new LinearGradient(
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
);
class Circular_arc extends StatefulWidget {
  const Circular_arc({
    Key key,
  }) : super(key: key);

  @override
  _Circular_arcState createState() => _Circular_arcState();
}

class _Circular_arcState extends State<Circular_arc> with SingleTickerProviderStateMixin {


  Animation<double> animation;
  AnimationController animController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animController = AnimationController(duration:Duration(seconds: 10),vsync: this);

    final curvedAnimation  = CurvedAnimation(parent: animController,curve: Curves.easeInOutCubic);

    animation = Tween<double>(begin: 0.0,end: 3.14).animate(curvedAnimation)..addListener(() {
      setState(() {

      });
    });
    animController.repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          CustomPaint(
            size: Size(300,300),
            painter: ProgressArc(null, Colors.black54, true),
          ),
          CustomPaint(
            size: Size(300,300),
            painter: ProgressArc(animation.value, Colors.redAccent, false),
          ),
          Positioned(
              top:130,
              left:130,
              child:Text("${(animation.value/3.14 * 100).round()}%",style:TextStyle(color:Colors.white,fontSize:30))
          )
        ],

      ),
    );
  }
}

class ProgressArc extends CustomPainter{

  bool isBackground;
  double arc;
  Color progressColor;

  ProgressArc(this.arc,this.progressColor,this.isBackground);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0,0, 300, 300);
    final startAngle = -math.pi;
    final sweepAngle = arc != null ? arc : math.pi;
    final userCenter  = false;
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;

    if(!isBackground){
      paint.shader = gradient.createShader(rect);
    }
    canvas.drawArc(rect, startAngle, sweepAngle, userCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
class user_streak extends StatefulWidget {
  @override
  _user_streakState createState() => _user_streakState();
}
class _user_streakState extends State<user_streak> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
            'user streak',
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                Text('Streak :-',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white
                ),),
                Text('CS / PS',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.deepOrange
                  ),),

              ],
            ),
            Divider(height: 10,color: Colors.white54,),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Circular_arc (),
            ),
            // Divider(height: 10,),
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
                      leading: Icon(Icons.local_fire_department),
                      title: Text('Streak progression'),
                      subtitle: Text('your current streak'),
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

