import 'package:flutter/material.dart';
// import 'package:first_flutter_apps/view/first_view.dart';
import 'package:first_flutter_apps/view/arithmetic_view.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArithmeticView(),
    );
  }
}