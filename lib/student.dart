import 'package:flutter/material.dart';
import 'package:edu_test_demo/models/student.dart';

class Student extends StatefulWidget {
  final StudentModal studentModal;
  const Student({super.key, required this.studentModal});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  dynamic _courses = [];
  @override
  void initState() {
    super.initState();
    widget.studentModal.courses().then((response) {
      setState(() => _courses = response);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_courses.length > 0) {
      return Text(_courses[0]);
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
