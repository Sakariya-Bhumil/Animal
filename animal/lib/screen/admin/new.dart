import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rough Work Area',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rough Work Area'),
        ),
        body: const RoughWorkArea(),
      ),
    );
  }
}

class RoughWorkArea extends StatefulWidget {
  const RoughWorkArea({Key? key}) : super(key: key);

  @override
  _RoughWorkAreaState createState() => _RoughWorkAreaState();
}

class _RoughWorkAreaState extends State<RoughWorkArea> {
  // List to store drawn points; null denotes a break between strokes.
  final List<Offset?> _points = [];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // When the user starts drawing
      onPanStart: (details) {
        setState(() {
          _points.add(details.localPosition);
        });
      },
      // When the user continues drawing
      onPanUpdate: (details) {
        setState(() {
          _points.add(details.localPosition);
        });
      },
      // When the user lifts the mouse button / ends the stroke
      onPanEnd: (details) {
        _points.add(null);
      },
      child: CustomPaint(
        size: Size.infinite,
        painter: RoughWorkPainter(_points),
      ),
    );
  }
}

class RoughWorkPainter extends CustomPainter {
  final List<Offset?> points;
  RoughWorkPainter(this.points);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(RoughWorkPainter oldDelegate) =>
      oldDelegate.points != points;
}
