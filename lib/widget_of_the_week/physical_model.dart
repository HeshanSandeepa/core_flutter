import 'package:flutter/material.dart';

class PhysicalModelApp extends StatefulWidget {
  const PhysicalModelApp({Key? key}) : super(key: key);

  @override
  State<PhysicalModelApp> createState() => _PhysicalModelAppState();
}

class _PhysicalModelAppState extends State<PhysicalModelApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PhysicalModel(
            elevation: 20,
            child: Container(
              height: 200,
              width: 200,
            ),
            shadowColor: Colors.red,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
