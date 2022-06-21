import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=LPe56fezmoo
class PlaceHolderApp extends StatefulWidget {
  const PlaceHolderApp({Key? key}) : super(key: key);

  @override
  State<PlaceHolderApp> createState() => _PlaceHolderAppState();
}

class _PlaceHolderAppState extends State<PlaceHolderApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Limited Box'),
      ),
      body:  const Padding(
        padding: EdgeInsets.all(32.0),
        child: Placeholder(
          fallbackHeight: 200,
          fallbackWidth: 200,
          color: Colors.redAccent,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
