import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class AuthShape extends StatelessWidget {
  const AuthShape({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(200,
          200), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.cubicTo(
        size.width * 0.07994128,
        size.height * 0.8144598,
        size.width * 0.1332505,
        size.height * 0.8127723,
        size.width * 0.2685513,
        size.height * 0.8019330);
    path_0.lineTo(size.width * 0.7738513, size.height * 0.8019330);
    path_0.cubicTo(
        size.width * 0.9225077,
        size.height * 0.8012991,
        size.width * 0.9615359,
        size.height * 0.7473750,
        size.width,
        size.height * 0.6135268);
    path_0.lineTo(size.width, 0);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * 5.024062e-7),
        Offset(size.width * 0.5000000, size.height * 1.371982), [
      const Color(0xffF9ABAE).withOpacity(1),
      const Color(0xffD9D9D9).withOpacity(0)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
