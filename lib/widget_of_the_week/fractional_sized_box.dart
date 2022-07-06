import 'package:flutter/material.dart';

class FractionalSizedBoxApp extends StatefulWidget {
  const FractionalSizedBoxApp({Key? key}) : super(key: key);

  @override
  State<FractionalSizedBoxApp> createState() => _FractionalSizedBoxAppState();
}

class _FractionalSizedBoxAppState extends State<FractionalSizedBoxApp> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fractionally Sized Box'),
      ),
      body: Padding(
        child: SizedBox.expand(
          child: FractionallySizedBox(
            widthFactor: 0.2,
            heightFactor: 0.5,
            alignment: FractionalOffset.center,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 4,
                ),
              ),
            ),
          ),
        ),
        padding: EdgeInsets.all(5.0),
      ),
    );
  }
}
