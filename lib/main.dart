import 'package:flutter/material.dart';

import 'widget_of_the_week/dismissable.dart';

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
      home: DismissibleApp(),
    );
  }
}
