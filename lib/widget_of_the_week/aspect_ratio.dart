import 'package:flutter/material.dart';

class AspectRatioApp extends StatefulWidget {
  const AspectRatioApp({Key? key}) : super(key: key);

  @override
  State<AspectRatioApp> createState() => _AspectRatioAppState();
}

class _AspectRatioAppState extends State<AspectRatioApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
          child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          color: Colors.red,
        ),
      )),
    );
  }
}
