import 'package:flutter/material.dart';

class ContainerApp extends StatefulWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  State<ContainerApp> createState() => _ContainerAppState();
}

class _ContainerAppState extends State<ContainerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fractionally Sized Box'),
      ),
      body: Padding(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10.0),
            color: Colors.amber[600],
            width: 50.0,
            height: 50.0,
            child: Text('Container'),
          ),
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
