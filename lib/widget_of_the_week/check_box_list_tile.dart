import 'package:flutter/material.dart';

class CheckBoxListTitleApp extends StatefulWidget {
  const CheckBoxListTitleApp({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTitleApp> createState() => _CheckBoxListTitleAppState();
}

class _CheckBoxListTitleAppState extends State<CheckBoxListTitleApp> {
  double timeDilation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CheckboxListTile(
          title: const Text('Animate Slowly'),
          value: timeDilation != 1.0,
          onChanged: (bool? value) {
            setState(() {
              timeDilation = value! ? 10.0 : 1.0;
            });
          },
          secondary: const Icon(Icons.hourglass_empty),
        ),
      )),
    );
  }
}
