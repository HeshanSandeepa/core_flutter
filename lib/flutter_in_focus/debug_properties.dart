import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// https://www.youtube.com/watch?v=DnC7eT-vh1k&list=PLjxrf2q8roU1fRV40Ec8200rX6OuQkmnl&index=2
class DebugPropertyApp extends StatefulWidget {
  const DebugPropertyApp({Key? key}) : super(key: key);

  @override
  State<DebugPropertyApp> createState() => _DebugPropertyAppState();
}

class _DebugPropertyAppState extends State<DebugPropertyApp> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DebugPropertyApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(color: Colors.red, child: Text(' Index is $index')),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties.add(IntProperty('index', index));
    super.debugFillProperties(properties);
  }
}
