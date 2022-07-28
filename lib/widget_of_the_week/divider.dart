import 'package:flutter/material.dart';

class DividerApp extends StatefulWidget {
  const DividerApp({Key? key}) : super(key: key);

  @override
  State<DividerApp> createState() => _DividerAppState();
}

class _DividerAppState extends State<DividerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Center(
        child: Column(
          children: const [
            Text('One'),
            Divider(
              height: 100,
              thickness: 10,
              color: Colors.green,
              indent: 10,
              endIndent: 50,
            ),
            Text('Two'),
          ],
        ),
      ),
    );
  }
}
