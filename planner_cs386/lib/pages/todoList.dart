import 'package:flutter/material.dart';
import 'package:planner_cs386/Resources/colors.dart';
import 'package:planner_cs386/Resources/routes.dart';

// ignore: use_key_in_widget_constructors
class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          backgroundColor: planItOutPrimary,
          automaticallyImplyLeading: false,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[Text('PlantItOut'), Text('To Do')])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'To-do List Goes here!',
            ),
            Text(
              'More to come soon',
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
                const Icon(
                  color: Colors.white54,
                  Icons.toc_rounded,
                  size: 50,
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
                  color: Colors.white,
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
