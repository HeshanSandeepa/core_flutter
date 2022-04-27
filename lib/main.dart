import 'package:flutter/material.dart';
import 'package:flutter_core/widget_of_the_week/animated_list.dart';
import 'package:flutter_core/widget_of_the_week/draggable.dart';
import 'package:flutter_core/widget_of_the_week/flexible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Core',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlexibleApp(),
    );
  }
}
