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
