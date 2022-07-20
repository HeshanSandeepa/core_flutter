import 'package:flutter/material.dart';

class ExtensionApp extends StatefulWidget {
  const ExtensionApp({Key? key}) : super(key: key);

  @override
  State<ExtensionApp> createState() => _ExtensionAppState();
}

class _ExtensionAppState extends State<ExtensionApp> {
  final String _value = '100';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generators'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(_StringParser(_value).parseInt().toString()),
      ),
    );
  }
}

extension _StringParser on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}
