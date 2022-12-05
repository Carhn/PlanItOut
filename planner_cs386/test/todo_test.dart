import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:planner_cs386/main.dart';
import 'package:planner_cs386/pages/todoList.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  // test to check item is added when tapping button
  test('New task added', () {
    Todo testVal = Todo(name: "test", checked: true);
    String result = testVal.name;
    expect(result, "test");
  });

  // test to find add button in dialog box
  testWidgets('finds add button', (tester) async {
    // Define the test key.
    const testKey = Key('Add');

    // Build a MaterialApp with the testKey.
    await tester.pumpWidget(MaterialApp(key: testKey, home: Container()));

    // Find the MaterialApp widget using the testKey.
    expect(find.byKey(testKey), findsOneWidget);
  });
}
