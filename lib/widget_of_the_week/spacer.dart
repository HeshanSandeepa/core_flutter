import 'package:flutter/material.dart';

class SpacerApp extends StatefulWidget {
  const SpacerApp({Key? key}) : super(key: key);

  @override
  State<SpacerApp> createState() => _SpacerAppState();
}

class _SpacerAppState extends State<SpacerApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
          child: Row(
            children: [
              Text('S'),
              Spacer(flex: 2,),
              Text('P'),
              Spacer(),
              Text('A'),
              Spacer(),
              Text('C'),
              Spacer(),
              Text('E'),
              Spacer(),
              Text('R'),
            ],
          )),
    );
  }
}
