import 'package:flutter/material.dart';

class BuilderApp extends StatefulWidget {
  const BuilderApp({Key? key}) : super(key: key);

  @override
  State<BuilderApp> createState() => _BuilderAppState();
}

class _BuilderAppState extends State<BuilderApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Stack'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
            child: TextButton(
          onPressed: () {
            // Fails because Scaffold.of() doesn't find anything
            // above this widget's context.
            print(Scaffold.of(context).hasAppBar);
          },
          child: Text('hasAppBar'),
        )),
      )
      //     Builder(
      //   builder: (BuildContext context) {
      //     return Center(
      //       child: TextButton(
      //         onPressed: () {
      //           print(Scaffold.of(context).hasAppBar);
      //         },
      //         child: Text('hasAppBar'),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}


