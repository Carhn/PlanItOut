// Citations: Code relating to sqflite/DB items (display, addition, removal)
// is modified from Dev Stack's Youtube Flutter SQFlite guide series.  Link to
// The first video of the series: https://www.youtube.com/watch?v=3SU34qF8_v4

import 'package:flutter/material.dart';

class DataModel {
  int? reminderId;
  final String reminderName;
  //final DateTime reminderDay;
  //final DateTime reminderTime;
  DataModel({this.reminderId, required this.reminderName
      //required this.reminderDay,
      //required this.reminderTime
      });

  factory DataModel.fromMap(Map<String, dynamic> json) => DataModel(
      reminderId: json["reminderId"], reminderName: json["reminderName"]
      //reminderDay: json["reminderDay"],
      //reminderTime: json["reminderTime"]
      );

  Map<String, dynamic> toMap() => {
        "reminderId": reminderId,
        "reminderName": reminderName
        //"reminderDay": reminderDay,
        //"reminderTime": reminderTime,
      };
}
