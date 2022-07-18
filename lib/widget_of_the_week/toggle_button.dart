import 'package:flutter/material.dart';

class ToggleButtonApp extends StatefulWidget {
  const ToggleButtonApp({Key? key}) : super(key: key);

  @override
  State<ToggleButtonApp> createState() => _ToggleButtonAppState();
}

class _ToggleButtonAppState extends State<ToggleButtonApp> {
  List<bool> isSelected = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Action Sheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ToggleButtons(
          children: const <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.call),
            Icon(Icons.cake),
          ],
          onPressed: (int index) {
            setState(() {
              isSelected[index] = !isSelected[index];
            });
          },
          isSelected: isSelected,
        ),
      ),
    );
  }
}
