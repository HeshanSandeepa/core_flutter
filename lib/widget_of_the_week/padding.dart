import 'package:flutter/material.dart';

class PaddingApp extends StatefulWidget {
  const PaddingApp({Key? key}) : super(key: key);

  @override
  State<PaddingApp> createState() => _PaddingAppState();
}

class _PaddingAppState extends State<PaddingApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Padding'),
      ),
      body: Padding(
        padding:  const EdgeInsets.fromLTRB(25, 0, 120, 80),
        child: Container(
          color: Colors.grey,
        ),
      ),
    );
  }
}
