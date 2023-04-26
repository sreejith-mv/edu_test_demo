import 'package:edu_test_demo/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter Widget > should increases counter value.',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: Counter())));

    //counter start with o
    expect(find.text('0'), findsOneWidget);

    //Trigger the tap
    final button = find.byKey(const ValueKey('increase_button'));
    await tester.tap(button);

    //Rebuild
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter Widget > should decrees counter value.',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: Counter())));

    //counter start with o
    expect(find.text('0'), findsOneWidget);

    //Trigger the tap
    final button = find.byKey(const ValueKey('decrease_button'));
    await tester.tap(button);

    //Rebuild
    await tester.pump();

    expect(find.text('-1'), findsOneWidget);
  });
}
