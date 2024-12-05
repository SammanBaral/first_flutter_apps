import 'package:first_flutter_apps/model/student.dart';
import 'package:flutter/material.dart';
// Extracted Widget
class StudentListView extends StatelessWidget {
  final List<Student> students;
  final Function(int) onDelete;

  const StudentListView({
    super.key,
    required this.students,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: students.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text('${students[index].fname} ${students[index].lname}'),
          subtitle: Text(students[index].city),
          trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDelete(index);
            },
          ),
        );
      },
    );
  }
}
