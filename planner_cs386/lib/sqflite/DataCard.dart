import 'package:flutter/material.dart';
import 'package:planner_cs386/sqflite/DataModel.dart';

class DataCard extends StatelessWidget {
  const DataCard({
    Key? key,
    required this.reminders,
    required this.index,
    required this.delete,
  }) : super(key: key);
  final DataModel reminders;
  final int index;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(reminders.reminderName),
        trailing: CircleAvatar(
            child: IconButton(
          icon: Icon(
            Icons.delete,
          ),
          onPressed: () {
            delete(index);
          },
        )),
      ),
    );
  }
}
