

import 'package:fit_streak/myProfile/Help_Screen/Tutorial.dart';
import 'package:fit_streak/myProfile/Help_Screen/VFX.dart';
import 'package:fit_streak/myProfile/Help_Screen/detail_working.dart';
import 'package:fit_streak/myProfile/rate_us.dart';
import 'package:fit_streak/myProfile/streak.dart';
import 'package:fit_streak/screens/home.dart';
import 'package:fit_streak/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:fit_streak/screens/myprofile.dart';
import 'package:fit_streak/screens/myplans.dart';
import 'package:fit_streak/myProfile/user_data.dart';
import 'package:fit_streak/myProfile/points.dart';
import 'package:fit_streak/myProfile/progress_report.dart';
import 'package:fit_streak/myProfile/calender.dart';
import 'package:fit_streak/myProfile/help.dart';
import 'package:fit_streak/myProfile/settings.dart';
import 'my Plans/plan1.dart';
import 'my Plans/plan2.dart';
import 'my Plans/plan3.dart';
import 'screens/myplans.dart';
import 'screens/camera_screen.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => loading(),
    '/home':(context) => Home(),
    '/my_profile':(context) => my_profile(),
    '/myplans':(context) => myplans(),
    '/user_data':(context) => user_data(),
    '/user_streak':(context) => user_streak(),
    '/user_points':(context) => user_points(),
    '/user_progress':(context) => user_progress(),
    '/calender':(context) => calender(),
    '/app_settings':(context) => settings(),
    '/help':(context) => help(),
    '/points':(context) => user_points(),
    '/rating':(context) => rate_us(),
    '/tutorial':(context) => user_tuto(),
    '/VFX':(context) => user_vfx(),
    '/detail':(context) => detail_working(),
    '/camera':(context) => Camerascreen(),
    '/plan1':(context) => plan1(),
    '/plan2':(context) => plan2(),
    '/plan3':(context) => plan3(),

  },
));
