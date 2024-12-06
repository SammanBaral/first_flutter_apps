import 'package:first_flutter_apps/view/dashboard_view.dart';
import 'package:first_flutter_apps/view/student_details_view.dart';
import 'package:first_flutter_apps/view/student_output_view.dart';
import 'package:flutter/material.dart';
// import 'package:first_flutter_apps/app.dart';
void main() {
  runApp(
    MaterialApp(
      initialRoute: '//',
      routes: {
        '//': (context) => const DashboardView(),
        '/': (context) => const StudentDetailsView(),
        '/output': (context) => const StudentOutputView(),
      },
    ),
  );
}

