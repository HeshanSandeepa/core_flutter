import 'dart:math';

import 'package:flutter/material.dart';

class RepaintBoundaryApp extends StatefulWidget {
  const RepaintBoundaryApp({Key? key}) : super(key: key);

  @override
  State<RepaintBoundaryApp> createState() => _RepaintBoundaryAppState();
}

class _RepaintBoundaryAppState extends State<RepaintBoundaryApp> {
  final GlobalKey _paintKey = new GlobalKey();
  Offset _offset = Offset.zero;

  Widget _buildBackground() {
    return RepaintBoundary(
      child: CustomPaint(
        painter: BackgroundColor(MediaQuery.of(context).size),
        isComplex: true,
        willChange: false,
      ),
    );
  }

  Widget _buildCursor() {
    return Listener(
      onPointerDown: _updateOffset,
      onPointerMove: _updateOffset,
      child: CustomPaint(
        key: _paintKey,
        painter: CursorPointer(_offset),
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(),
        ),
      ),
    );
  }

  _updateOffset(PointerEvent event) {
    RenderBox? referenceBox =
        _paintKey.currentContext?.findRenderObject() as RenderBox;
    Offset offset = referenceBox.globalToLocal(event.position);
    setState(() {
      _offset = offset;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: const Text('Flutter RepaintBoundary Demo'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          _buildBackground(),
          _buildCursor(),
        ],
      ),
    );
  }
}

class CursorPointer extends CustomPainter {
  final Offset _offset;

  CursorPointer(this._offset);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      _offset,
      10.0,
      new Paint()..color = Colors.green,
    );
  }

  @override
  bool shouldRepaint(CursorPointer old) => old._offset != _offset;
}

class BackgroundColor extends CustomPainter {
  static const List<Color> colors = [
    Colors.orange,
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.red,
  ];

  Size _size;
  BackgroundColor(this._size);

  @override
  void paint(Canvas canvas, Size size) {
    final Random rand = Random(12345);

    for (int i = 0; i < 100000; i++) {
      canvas.drawOval(
          Rect.fromCenter(
            center: Offset(
              rand.nextDouble() * _size.width - 100,
              rand.nextDouble() * _size.height,
            ),
            width: rand.nextDouble() * rand.nextInt(150) + 200,
            height: rand.nextDouble() * rand.nextInt(150) + 200,
          ),
          Paint()
            ..color = colors[rand.nextInt(colors.length)].withOpacity(0.3));
    }
  }

  @override
  bool shouldRepaint(BackgroundColor other) => false;
}
