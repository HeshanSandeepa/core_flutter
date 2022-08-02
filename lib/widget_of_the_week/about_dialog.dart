import 'package:flutter/material.dart';

class AboutDialogApp extends StatefulWidget {
  const AboutDialogApp({Key? key}) : super(key: key);

  @override
  State<AboutDialogApp> createState() => _AboutDialogAppState();
}

class _AboutDialogAppState extends State<AboutDialogApp> {
  void _showAboutUs() {
    showAboutDialog(
      context: context,
      applicationName: 'Flutter Core',
      applicationVersion: '1.0',
      applicationIcon: FlutterLogo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
          child: TextButton(
        onPressed: () {
          _showAboutUs();
        },
        child: const Text('Tap Me'),
      )),
    );
  }
}
