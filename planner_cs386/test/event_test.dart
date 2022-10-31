import 'package:flutter_test/flutter_test.dart';
import 'package:planner_cs386/eventClass.dart';
import 'package:planner_cs386/main.dart';

void main() {
  test('New event testing', () {
    Event tester = Event(title: "test");
    String result = tester.title;
    expect(result, 'test');
  });
}
