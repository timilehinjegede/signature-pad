import 'package:flutter/material.dart';

class SignaturePainter extends CustomPainter {
  SignaturePainter({
    required this.strokeWidth,
    required this.color,
  });

  final double strokeWidth;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.butt;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
