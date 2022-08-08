import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredApp extends StatefulWidget {
  const ImageFilteredApp({Key? key}) : super(key: key);

  @override
  State<ImageFilteredApp> createState() => _ImageFilteredAppState();
}

class _ImageFilteredAppState extends State<ImageFilteredApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 5),
              child:
                  const SizedBox(height: 200, width: 200, child: FlutterLogo())),
        ),
      ),
    );
  }
}
