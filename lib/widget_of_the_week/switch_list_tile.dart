import 'package:flutter/material.dart';

class SwitchListTileApp extends StatefulWidget {
  const SwitchListTileApp({Key? key}) : super(key: key);

  @override
  State<SwitchListTileApp> createState() => _SwitchListTileAppState();
}

class _SwitchListTileAppState extends State<SwitchListTileApp> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SwitchListTile(
          title: const Text('Lights'),
          value: _lights,
          onChanged: (bool value) {
            setState(() {
              _lights = value;
            });
          },
          secondary: const Icon(Icons.lightbulb_outline),
        ),
      ),
    );
  }
}
