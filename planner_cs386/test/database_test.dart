import 'package:planner_cs386/pages/reminders.dart';
import 'package:planner_cs386/sqflite/DataModel.dart';
import 'package:planner_cs386/sqflite/Database.dart';
import 'package:planner_cs386/sqflite/DataCard.dart';
import 'package:test/test.dart';

void main() {
  test(' Add item to DB', () {
    DataModel localReminderData = DataModel(reminderName: "TEST");
    String result = localReminderData.reminderName;
    expect(result, "TEST");
  });
}
