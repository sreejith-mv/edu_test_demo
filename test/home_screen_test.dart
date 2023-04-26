import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:edu_test_demo/home_screen.dart';

void main() {
  // testWidgets('Home Screen Widget > should render successfully.',
  //     (WidgetTester tester) async {
  //   await tester.pumpWidget(const MaterialApp(
  //     home: HomeScreen(),
  //   ));

  //   expect(tester.renderObject(find.byType(HomeScreen)), isNotNull);
  // });

  testWidgets('Home Screen Widget > should have hello world text on screen.',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(
        message: '',
      ),
    ));
    expect(find.text('Hello World!!!'), findsOneWidget);
  });

  testWidgets('Home Screen Widget > should show message text on screen.',
      (WidgetTester tester) async {
    const String message = 'This is a message to show';
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen(
        message: message,
      ),
    ));
    expect(find.text(message), findsOneWidget);
  });
}
