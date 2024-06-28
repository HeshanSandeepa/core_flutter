import 'package:flutter/material.dart';

class BaseLineApp extends StatefulWidget {
  const BaseLineApp({Key? key}) : super(key: key);

  @override
  State<BaseLineApp> createState() => _BaseLineAppState();
}

class _BaseLineAppState extends State<BaseLineApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
        child: Container(
          // 02 on both H and W to leave space for the borders.
          height: 302,
          width: 602,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blueAccent, width: 1),
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: 200,
                child: Baseline(
                  baseline: 200,
                  baselineType: TextBaseline.alphabetic,
                  child:
                      Text('0', style: Theme.of(context).textTheme.bodyLarge),
                ),
              ),
              const SizedBox(
                height: 300,
                width: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 50,
                      height: 100,
                      width: 300,
                      child: ColoredBox(color: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
