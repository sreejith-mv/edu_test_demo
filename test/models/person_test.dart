import 'package:edu_test_demo/models/person.dart';
import 'package:edu_test_demo/models/student.dart';
import 'package:edu_test_demo/student.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import '../product_listing_test.mocks.dart';
import 'person_test.mocks.dart';

@GenerateMocks([Person])
void main() {
  final client = MockClient();
  final person = MockPerson();
  final StudentModal student = StudentModal(person: person, client: client);
  test('Verify person talk', () {
    when(person.talk()).thenReturn('Hello world');
    person.talk();
    verify(person.talk());
  });

  test('Verify student can reply', () {
    when(person.talk()).thenReturn('Hello world');
    student.reply();
    verify(person.talk());
  });

  test('verify student get cources', () {
    when(client.get(Uri.parse('http://example.com/courses'))).thenAnswer(
        (realInvocation) async => http.Response('["Flutter"]', 200));
    student.courses();
    verify(client.get(Uri.parse('http://example.com/courses')));
  });

  testWidgets('verify student widgets works', (WidgetTester tester) async {
    when(client.get(Uri.parse('http://example.com/courses'))).thenAnswer(
        (realInvocation) async => http.Response('["Flutter"]', 200));
    await tester.pumpWidget(
        MaterialApp(home: Scaffold(body: Student(studentModal: student))));
    await tester.pump();

    verify(client.get(Uri.parse('http://example.com/courses')));

    expect(find.text('Flutter'), isNotNull);
  });
}
