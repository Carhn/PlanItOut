import 'package:flutter/material.dart';
import 'package:planner_cs386/Resources/colors.dart';
import 'package:planner_cs386/Resources/routes.dart';

class Reminder {
  String name = '';
  int time = 0;
}

// ignore: use_key_in_widget_constructors
class Reminders extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ReminderState();
}

class _ReminderState extends State<Reminders> {
  TextEditingController controller = TextEditingController();
  String reminderName = "";

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
              onPressed: () async {
                final reminderName = await openDialog(context, controller);

                //              if (reminderName == null || reminderName.isEmpty)

                print('Name is $reminderName');
              },
              child: const Text('Add Reminder'),
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

Future<String?> openDialog(
        BuildContext context, TextEditingController controller) =>
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
