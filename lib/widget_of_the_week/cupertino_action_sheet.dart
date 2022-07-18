import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheetApp extends StatefulWidget {
  const CupertinoActionSheetApp({Key? key}) : super(key: key);

  @override
  State<CupertinoActionSheetApp> createState() => _CupertinoActionSheetAppState();
}

class _CupertinoActionSheetAppState extends State<CupertinoActionSheetApp> {
  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Title'),
        message: const Text('Message'),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            /// This parameter indicates the action would be a default
            /// defualt behavior, turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Default Action'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Action'),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Destructive Action'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Action Sheet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Cupertino Action'
                'Sheet'),
          ),
          child: Center(
            child: CupertinoButton(
              onPressed: () => _showActionSheet(context),
              child: const Text('CupertinoActionSheet'),
            ),
          ),
        ),
      ),
    );
  }
}
