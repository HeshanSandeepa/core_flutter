import 'package:flutter/material.dart';

class StackApp extends StatefulWidget {
  const StackApp({Key? key}) : super(key: key);

  @override
  State<StackApp> createState() => _StackAppState();
}

class _StackAppState extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              color: Colors.red,
            ),
            Positioned(
              bottom: -50,
              right: -50,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            Positioned(
              bottom: -70,
              right: -70,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
