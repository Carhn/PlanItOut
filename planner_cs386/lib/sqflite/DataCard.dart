// Citations: Code relating to sqflite/DB items (display, addition, removal)
// is modified from Dev Stack's Youtube Flutter SQFlite guide series.  Link to
// The first video of the series: https://www.youtube.com/watch?v=3SU34qF8_v4

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
