import 'package:flutter/material.dart';

class PositionedTransitionApp extends StatefulWidget {
  const PositionedTransitionApp({Key? key}) : super(key: key);

  @override
  State<PositionedTransitionApp> createState() =>
      _PositionedTransitionAppState();
}

class _PositionedTransitionAppState extends State<PositionedTransitionApp>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Spacer'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final Size biggest = constraints.biggest;
            return Stack(
              children: <Widget>[
                PositionedTransition(
                  rect: RelativeRectTween(
                    begin: RelativeRect.fromSize(
                        Rect.fromLTWH(0, 0, smallLogo, smallLogo), biggest),
                    end: RelativeRect.fromSize(
                        Rect.fromLTWH(biggest.width - bigLogo,
                            biggest.height - bigLogo, bigLogo, bigLogo),
                        biggest),
                  ).animate(CurvedAnimation(
                    parent: _controller,
                    curve: Curves.elasticInOut,
                  )),
                  child: const Padding(
                      padding: EdgeInsets.all(8), child: FlutterLogo()),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
