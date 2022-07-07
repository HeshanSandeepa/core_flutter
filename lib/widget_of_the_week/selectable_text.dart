import 'package:flutter/material.dart';

class SelectableTextApp extends StatefulWidget {
  const SelectableTextApp({Key? key}) : super(key: key);

  @override
  State<SelectableTextApp> createState() => _SelectableTextAppState();
}

class _SelectableTextAppState extends State<SelectableTextApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Selectable Text App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const <Widget>[
            SelectableText(
              'Hello! How are you?',
              cursorColor: Colors.purple,
              toolbarOptions: ToolbarOptions(copy: true, cut: true),
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SelectableText.rich(
              TextSpan(
                text: 'Hello', // default text style
                children: <TextSpan>[
                  TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              cursorColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
