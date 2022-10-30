import 'package:flutter/material.dart';
import 'package:planner_cs386/sqflite/DataModel.dart';

class DataCard extends StatelessWidget {
  const DataCard({Key? key, required this.reminders}) : super(key: key);
  final DataModel reminders;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.edit),
        ),
        title: Text(reminders.reminderName),
        trailing: CircleAvatar(child: Icon(Icons.delete)),
      ),
    );
  }
}
