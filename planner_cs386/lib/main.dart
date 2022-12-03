import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:planner_cs386/eventClass.dart';
import 'package:planner_cs386/Resources/colors.dart';
import 'package:planner_cs386/Resources/routes.dart';
import 'package:planner_cs386/pages/reminders.dart';
import 'package:planner_cs386/pages/todoList.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: homeRoute,
    routes: {
      homeRoute: (context) => const Home(),
      todoRoute: (context) => TodoList(),
      remindersRoute: (context) => Reminders()
    },
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  late TextEditingController _eventController = TextEditingController();

  String dropdownValue = '1';
  String dropdownValueMin = '00';
  String dropdownValueAmPm = 'am';

  var items = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];
  var itemsMin = [];
  var itemsAmPm = ['am', 'pm'];
  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsFromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  @override
  void dispose() {
    _eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: planItOutPrimary,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'PlantItOut',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text('Calendar')
              ])),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              startingDayOfWeek: StartingDayOfWeek.sunday,
              focusedDay: _selectedDay,
              firstDay: DateTime(1990),
              lastDay: DateTime(2050),
              calendarFormat: format,
              onFormatChanged: (CalendarFormat _format) {
                setState(() {
                  format = _format;
                });
              },

              eventLoader: _getEventsFromDay,

              // Calendar stylization
              headerStyle: HeaderStyle(
                formatButtonShowsNext: false,
                formatButtonTextStyle: const TextStyle(color: Colors.white),
                formatButtonDecoration: BoxDecoration(
                  color: planItOutPrimary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              calendarStyle: CalendarStyle(
                isTodayHighlighted: true,
                selectedDecoration: BoxDecoration(
                  color: planItOutPrimary,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                todayDecoration: BoxDecoration(
                  color: planItOutPrimaryFaded,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                selectedTextStyle: TextStyle(color: Colors.white),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                weekendDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                outsideDecoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
            ),
            ..._getEventsFromDay(_selectedDay)
                .map((Event event) => ListTile(title: Text(event.title))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  insetPadding: const EdgeInsets.symmetric(vertical: 20.0),
                  title: Text('Add Event'),
                  content: Column(children: [
                    TextField(
                      decoration: const InputDecoration(hintText: 'Event Name'),
                      controller: _eventController,
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 150.0),
                        child: Text('Event Start:')),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropdownButton(
                            // Initial Value
                            value: dropdownValue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                          ),
                          Text(':'),
                          DropdownButton(
                            // Initial Value
                            value: dropdownValue,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                              });
                            },
                          ),
                          DropdownButton(
                            // Initial Value
                            value: dropdownValueAmPm,

                            // Down Arrow Icon
                            icon: const Icon(Icons.keyboard_arrow_down),

                            // Array list of items
                            items: itemsAmPm.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValueAmPm = newValue!;
                              });
                            },
                          ),
                        ]),
                    const Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 160.0),
                        child: Text('Event End:')),
                    DropdownButton(
                      // Initial Value
                      value: dropdownValue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                    ),
                    Text(':'),
                    DropdownButton(
                      // Initial Value
                      value: dropdownValue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                    ),
                    DropdownButton(
                      // Initial Value
                      value: dropdownValueAmPm,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: itemsAmPm.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValueAmPm = newValue!;
                        });
                      },
                    ),
                  ]),
                  actions: [
                    TextButton(
                        child: Text('Cancel'),
                        onPressed: () => Navigator.pop(context)),
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        if (_eventController.text.isEmpty) {
                        } else {
                          if (selectedEvents[_selectedDay] != null) {
                            selectedEvents[_selectedDay]
                                ?.add(Event(title: _eventController.text));
                          } else {
                            selectedEvents[_selectedDay] = [
                              Event(title: _eventController.text)
                            ];
                          }
                        }
                        Navigator.pop(context);
                        _eventController.clear();
                        setState(() {});
                        return;
                      },
                    ),
                  ],
                ))),
        backgroundColor: planItOutPrimary,
        label: Text("Add Event"),
        icon: Icon(Icons.add),
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
                const Icon(
                  Icons.calendar_month_rounded,
                  size: 40,
                  color: Colors.white54,
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
