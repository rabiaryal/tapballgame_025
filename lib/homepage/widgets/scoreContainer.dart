import 'package:flutter/material.dart';

class ScoreContainer extends StatelessWidget {
  final double heightOfContiner;
  final double widthOfContiner;
  final int score;
  final Color bodyColor;
  ScoreContainer({
    super.key,
    this.heightOfContiner = 100,
    this.widthOfContiner = double.infinity,
    this.bodyColor = Colors.black,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfContiner,
      width: widthOfContiner,
      decoration: BoxDecoration(
          color: bodyColor, borderRadius: BorderRadius.circular(15)),
      child: Center(
        child:  Text(
          '$score',
          style: TextStyle(fontSize: 24, color: Colors.red),
        ),
      ),
    );
  }
}
