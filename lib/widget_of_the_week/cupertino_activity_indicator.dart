import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorApp extends StatefulWidget {
  const CupertinoActivityIndicatorApp({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndicatorApp> createState() =>
      _CupertinoActivityIndicatorAppState();
}

class _CupertinoActivityIndicatorAppState
    extends State<CupertinoActivityIndicatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cupertino Activity Indicator',
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
