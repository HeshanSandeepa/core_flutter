import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=uVki2CIzBTs
class LimitedBoxApp extends StatefulWidget {
  const LimitedBoxApp({Key? key}) : super(key: key);

  @override
  State<LimitedBoxApp> createState() => _LimitedBoxAppState();
}

class _LimitedBoxAppState extends State<LimitedBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Limited Box'),
      ),
      body: ListView(
        children: [
          for (var i = 0; i < 10; i++)
            LimitedBox(
              child: Container(
                color: Colors.green,
              ),
              maxHeight: 20,
            ),
        ],
      ),
    );
  }
}
