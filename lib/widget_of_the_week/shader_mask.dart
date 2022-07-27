import 'package:flutter/material.dart';

class ShaderMaskApp extends StatefulWidget {
  const ShaderMaskApp({Key? key}) : super(key: key);

  @override
  State<ShaderMaskApp> createState() => _ShaderMaskAppState();
}

class _ShaderMaskAppState extends State<ShaderMaskApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Expanded(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 1.0,
                  colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: const Text('I’m burning the memories', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 50),),
            ),
          ),
        ),
      ),
    );
  }
}
