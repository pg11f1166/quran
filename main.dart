import 'package:flutter/material.dart';
import 'package:task_1/part1.dart';
import 'package:task_1/day4.dart';
import 'package:task_1/day6.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: cv(),
      // home: day4(),
      home: day_6(),
    );
  }
}