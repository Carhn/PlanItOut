import 'package:flutter/material.dart';
import 'package:planner_cs386/Resources/colors.dart';
import 'package:planner_cs386/Resources/routes.dart';
import 'package:planner_cs386/sqflite/DataModel.dart';
import 'package:planner_cs386/sqflite/Database.dart';
import 'package:planner_cs386/sqflite/DataCard.dart';

class Reminder {
  String name = '';
  DateTime dateTime = DateTime.now();

  Reminder(String name, DateTime dateTime) {
    this.name = name;
    this.dateTime = dateTime;
  }
}

// ignore: use_key_in_widget_constructors
class Reminders extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ReminderState();
}

class _ReminderState extends State<Reminders> {
  TextEditingController controller = TextEditingController();
  bool fetching = true;
  List<DataModel> ReminderData = [];
  String reminderName = "Add Reminder";
  DateTime dateTime = DateTime.now();
  Reminder tempReminder = Reminder('', DateTime.now());
  final rows = <TableRow>[];

  late DB db;
  @override
  void initState() {
    super.initState();
    db = DB();
    getData2();
  }

  void getData2() async {
    ReminderData = await db.getData();
    setState(() {
      fetching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: planItOutPrimary,
          automaticallyImplyLeading: false,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[Text('PlantItOut'), Text('Reminders')])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                foregroundColor: Colors.blueGrey,
              ),
              child: Text('$reminderName'),
              onPressed: () async {
                final name = await openDialog(context, controller, dateTime);

                //              if (reminderName == null || reminderName.isEmpty)
                setState(() => reminderName = name!);
              },
            ),
            TextButton(
              child: Text('${dateTime.year}/${dateTime.month}/${dateTime.day}'),
              onPressed: () async {
                final date = await pickDate(context, dateTime);

                if (date == null) return;

                setState(() => dateTime = date);
              },
            ),
            TextButton(
              child: Text('${dateTime.hour}:${dateTime.minute}'),
              onPressed: () async {
                final time = await pickTime(context, dateTime);

                if (time == null) return;

                final newDateTime = DateTime(
                  dateTime.year,
                  dateTime.month,
                  dateTime.day,
                  time.hour,
                  time.minute,
                );
                setState(() => dateTime = newDateTime);
              },
            ),
            TextButton(
                child: Text('SUBMIT'),
                onPressed: () {
                  tempReminder = saveReminder(reminderName, dateTime);
                  DataModel localReminderData =
                      DataModel(reminderName: controller.text);
                  db.insertData(localReminderData);
                  setState(() {
                    ReminderData.add(localReminderData);
                  });
                  controller.clear();
                  print('${tempReminder.name} at ${tempReminder.dateTime}');
                }),
            Expanded(
              child: ListView.builder(
                itemCount: ReminderData.length,
                itemBuilder: (context, index) =>
                    DataCard(reminders: ReminderData[index]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: planItOutPrimary,
        child: SizedBox(
          height: 75.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, todoRoute, (r) => false);
                  },
                  color: Colors.white,
                  highlightColor: Colors.white30,
                  icon: const Icon(Icons.toc_rounded),
                  iconSize: 50,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, homeRoute, (r) => false);
                  },
                  color: Colors.white,
                  highlightColor: Colors.white30,
                  icon: const Icon(Icons.calendar_month_rounded),
                  iconSize: 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, remindersRoute, (r) => false);
                  },
                  color: Colors.white54,
                  highlightColor: Colors.white30,
                  icon: const Icon(Icons.beenhere_rounded),
                  iconSize: 40,
                ),
              ]),
        ),
      ),
    ));
  }
}

Future<String?> openDialog(BuildContext context,
        TextEditingController controller, DateTime dateTime) =>
    showDialog<String?>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Add Reminder Name'),
        content: TextField(
          autofocus: true,
          decoration: InputDecoration(hintText: 'Enter Reminder Name'),
          controller: controller,
        ),
        actions: <Widget>[
          TextButton(
            child: Text('SUBMIT'),
            onPressed: () {
              Navigator.of(context).pop(controller.text);
            },
          ),
        ],
      ),
    );

Future<DateTime?> pickDate(BuildContext context, DateTime dateTime) =>
    showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

Future<TimeOfDay?> pickTime(BuildContext context, DateTime dateTime) =>
    showTimePicker(
      context: context,
      initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
    );

Reminder saveReminder(String reminderName, DateTime dateTime) {
  Reminder tempReminder = Reminder(reminderName, dateTime);

  // TODO: FIGURE OUT HOW TO DO THIS SAVING

  return tempReminder;
}
