import 'package:flutter/material.dart';
import 'package:planner_cs386/Resources/colors.dart';
import 'package:planner_cs386/Resources/routes.dart';

// ignore: use_key_in_widget_constructors
class Todo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoState();
}

class _TodoState extends State<Todo> {

  bool isChecked = false;

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
      

      // checklist location
      body: Center(
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text('Task'),
          subtitle: Text('Description'),
          value: isChecked,
          onChanged: (value) {
            setState(() => isChecked = value! );
          },
          // colors for checkmark
          activeColor: Colors.green, // background color
          checkColor: Colors.black, // foreground color
        ),
      ),
      
      // add button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // code to create event on list
        },
        child: const Icon(Icons.add)),
      
      
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
