import 'package:flutter/material.dart';

class RotatedBoxApp extends StatefulWidget {
  const RotatedBoxApp({Key? key}) : super(key: key);

  @override
  State<RotatedBoxApp> createState() => _RotatedBoxAppState();
}

class _RotatedBoxAppState extends State<RotatedBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: RotatedBox(
            quarterTurns: 3,
            child: Text(
              'Rotated Box',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
