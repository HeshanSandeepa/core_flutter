import 'package:flutter/material.dart';

class ConstraintBoxApp extends StatefulWidget {
  const ConstraintBoxApp({Key? key}) : super(key: key);

  @override
  State<ConstraintBoxApp> createState() => _ConstraintBoxAppState();
}

class _ConstraintBoxAppState extends State<ConstraintBoxApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ConstraintBox'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 90, maxHeight: 30),
        child: Container(
          color: Colors.teal,
          child: Text(
            'Woolha dot com Woolha dot com Woolha dot com Woolha dot com',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 22),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
