import 'package:flutter/material.dart';

class FlexibleApp extends StatefulWidget {
  const FlexibleApp({Key? key}) : super(key: key);

  @override
  State<FlexibleApp> createState() => _FlexibleAppState();
}

class _FlexibleAppState extends State<FlexibleApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter FlexibleApp'),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
