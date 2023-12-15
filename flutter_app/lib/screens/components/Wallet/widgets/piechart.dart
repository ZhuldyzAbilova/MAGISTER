import 'dart:math';
import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/Wallet/data.dart';

class PieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: Colors.white24,
        ),
        height: 300,
        width: 300,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor
                ),
                height: 180,
                width: 80,
                child: Center(
                  child: Text(
                    '\$ 860',
                    style: TextStyle(
                      color: Color(0xFF134064),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    category.forEach((f) => total += f['amount']);
    for (var i = 0; i < category.length; i++) {
      final currentCategory = category[i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
