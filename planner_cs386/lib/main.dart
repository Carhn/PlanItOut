import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:planner_cs386/Resources/colors.dart';
import 'package:planner_cs386/Resources/routes.dart';
import 'package:planner_cs386/pages/reminders.dart';
import 'package:planner_cs386/pages/todoList.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: homeRoute,
    routes: {
      homeRoute: (context) => const Home(),
      todoRoute: (context) => Todo(),
      remindersRoute: (context) => Reminders()
    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: planItOutPrimary,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[Text('PlantItOut'), Text('Calendar')])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Calendar Goes here!',
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
                  color: Colors.white54,
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
    );
  }
}
