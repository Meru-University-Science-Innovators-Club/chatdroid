import 'package:flutter/material.dart';

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // draw multiple curves

    for (double i = 0; i < size.height * 0.9; i += 20) {
      final path = Path()
        ..moveTo(0, i)
        ..quadraticBezierTo(
          size.width / 4,
          1 - 10,
          size.width / 2,
          i,
        )
        ..quadraticBezierTo(size.height * 3 / 4, i + 10, size.width, i);
        canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
