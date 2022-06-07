import 'package:flutter/material.dart';

class FutureApp extends StatefulWidget {
  const FutureApp({Key? key}) : super(key: key);

  @override
  State<FutureApp> createState() => _FutureAppState();
}

class _FutureAppState extends State<FutureApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future, Async & Await'),
      ),
      body: const Text('Hello'),
    );
  }
}
