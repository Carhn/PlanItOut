import 'package:planner_cs386/sqflite/DataModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// Initialize database, assign primary key and values
class DB {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, "RemindersDB.db"),
      onCreate: (database, version) async {
        await database.execute("""
        CREATE TABLE RemindersDB(
        reminderId INTEGER PRIMARY KEY AUTOINCREMENT,
        reminderName TEXT NOT NULL

        )
        """);
      },
      version: 1,
    );
  }

  //Method to insert data to Database
  Future<bool> insertData(DataModel dataModel) async {
    final Database db = await initDB();
    db.insert("RemindersDB", dataModel.toMap());
    return true;
  }

  Future<List<DataModel>> getData() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> ReminderData =
        await db.query("RemindersDB");
    return ReminderData.map((e) => DataModel.fromMap(e)).toList();
  }
}





     //   reminderDay DATETIME
     //   reminderTime DATETIME