import 'package:flutter/material.dart';

class ProgressIndicatorApp extends StatefulWidget {
  const ProgressIndicatorApp({Key? key}) : super(key: key);

  @override
  State<ProgressIndicatorApp> createState() => _ProgressIndicatorAppState();
}

class _ProgressIndicatorAppState extends State<ProgressIndicatorApp>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(
          child: Column(
            children: [
              CircularProgressIndicator(
                value: controller.value,
                semanticsLabel: 'Linear progress indicator',
              ),
              Spacer(),
              LinearProgressIndicator(value: controller.value,)
            ],
          ),
        ),
      ),
    );
  }
}
