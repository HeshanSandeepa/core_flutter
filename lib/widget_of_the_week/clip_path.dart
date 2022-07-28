import 'package:flutter/material.dart';

class TsClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 200, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class TsClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 100);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class TsClip3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - 100);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}


class ClipPathApp extends StatefulWidget {
  const ClipPathApp({Key? key}) : super(key: key);

  @override
  State<ClipPathApp> createState() => _ClipPathAppState();
}

class _ClipPathAppState extends State<ClipPathApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ClipPath'),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: TsClip1(),
            child: Container(
              width: double.infinity,
              height: 500,
              color: Colors.amberAccent,
            ),
          ),
          ClipPath(
            clipper: TsClip2(),
            child: Container(
              width: double.infinity,
              height: 450,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
