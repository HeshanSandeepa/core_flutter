import 'package:flutter/material.dart';

class ColorFilteredApp extends StatefulWidget {
  const ColorFilteredApp({Key? key}) : super(key: key);

  @override
  State<ColorFilteredApp> createState() => _ColorFilteredAppState();
}

class _ColorFilteredAppState extends State<ColorFilteredApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Filtered App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.redAccent, BlendMode.modulate),
              child: FlutterLogo(size: 150.0)),
        ),
      ),
    );
  }
}
