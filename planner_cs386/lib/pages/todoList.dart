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

  // text editor controller for dialog box
  TextEditingController _controller = TextEditingController();

  // list with added tasks

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
            setState(() => isChecked = value!);
          },
          // colors for checkmark
          activeColor: Colors.green, // background color
          checkColor: Colors.black, // foreground color
        ),
      ),

      // buntton to add task
      floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text("Add Task"),
                    content: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.blue),
                        hintText: "Description",
                        filled: true,
                        fillColor: Colors.blue[50],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel")),
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Add")),
                    ],
                  )),
          child: const Icon(Icons.add)),

      // bottom bar
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
