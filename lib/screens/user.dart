import 'package:flutter/foundation.dart';

class User with ChangeNotifier {
  final String id;
  final String name;
  final String date;
  final double height;
  final String gender;
  final double weight;
  final String timeslot;
  final double money;

  bool isFavorite;

  User({
    @required this.id,
    @required this.name,
    @required this.date,
    @required this.height,
    @required this.gender,
    @required this.weight,
    @required this.timeslot,
    @required this.money,
  });

}