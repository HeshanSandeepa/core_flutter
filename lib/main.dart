import 'package:flutter/material.dart';
import 'package:flutter_core/state_management/inherited_widget.dart';
import 'package:flutter_core/widget_of_the_week/animated_icon.dart';
import 'package:flutter_core/widget_of_the_week/animated_list.dart';
import 'package:flutter_core/widget_of_the_week/aspect_ratio.dart';
import 'package:flutter_core/widget_of_the_week/draggable.dart';
import 'package:flutter_core/widget_of_the_week/flexible.dart';
import 'package:flutter_core/widget_of_the_week/media_query.dart';
import 'package:flutter_core/widget_of_the_week/spacer.dart';

import 'async_coding/isolate.dart';

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
      home: AspectRatioApp(),
    );
  }
}
