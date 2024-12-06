import 'package:first_flutter_apps/core/common/student_listview.dart';
import 'package:first_flutter_apps/model/student.dart';
import 'package:flutter/material.dart';

class StudentOutputView extends StatefulWidget {
  const StudentOutputView({super.key});

  @override
  State<StudentOutputView> createState() => _StudentOutputViewState();
}

class _StudentOutputViewState extends State<StudentOutputView> {
  List<Student> listStudents = [];

  @override
  void didChangeDependencies() {
    listStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }
  void _deleteStudent(int index) {
    setState(() {
      listStudents.removeAt(index); // Remove the student at the given index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listStudents.isEmpty
          ? const Center(child: Text('Data chainaa'))
          : StudentListView(students: listStudents, onDelete: _deleteStudent, ),
    );
  }
}