
import 'package:flutter/material.dart';

class MyBall extends StatelessWidget {
  const MyBall({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightAndWidth = 50;

    return Container(
      height: heightAndWidth,
      width: heightAndWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.greenAccent.shade700,
            Colors.greenAccent,
          ],
          stops: [0.5, 1.0],
          center: const Alignment(-0.3, -0.3),
          radius: 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 12,
            spreadRadius: 2,
            offset: const Offset(5, 5),
          ),
        ],
      ),
    );
  }
}
