import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:planner_cs386/pages/todoList.dart';


void main() {
  testWidgets('Counter increment for button press', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( Todo() );

    expect(find.widgetWithIcon(FloatingActionButton, Icons.add), findsOneWidget);
  });
}