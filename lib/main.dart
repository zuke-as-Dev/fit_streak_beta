import 'package:fit_streak/screens/home.dart';
import 'package:fit_streak/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:fit_streak/screens/menu.dart';
import 'package:fit_streak/screens/myplans.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context) => loading(),
    '/home':(context) => Home(),
    '/menu':(context) => menu(),
    '/myplans':(context) => myplans()
  },
));
