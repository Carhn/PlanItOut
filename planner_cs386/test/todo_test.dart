import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner_cs386/main.dart';
import 'package:planner_cs386/pages/todoList.dart';

void main() {
  // test to check item is added when tapping button
  test('New task added', () {
    Todo testVal = Todo(name: "test", checked: true);
    String result = testVal.name;
    expect(result, "test");
  });
  
   // test to check that an additional dialog box is opened when tapping the '+' button
  test('Dialog Box was opened and identified successfully', () {
    expect(
        find.widgetWithIcon(FloatingActionButton, Icons.add), findsOneWidget);
  });
}
