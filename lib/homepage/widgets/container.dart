import 'package:flutter/material.dart';
import 'package:pop_upanimation_025/homepage/widgets/ball.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controllerBall;
  late Animation<double> _horizontalAnimation;
  late Animation<double> _verticalAnimation;

  double _startX = 0;
  double _startY = 0;
  double _endX = 200; // Horizontal movement
  double _endY = 300; // Vertical movement

  @override
  void initState() {
    super.initState();
    _controllerBall = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _horizontalAnimation = Tween<double>(
      begin: _startX,
      end: _endX,
    ).animate(
      CurvedAnimation(
        parent: _controllerBall,
        curve: Curves.easeInOut,
      ),
    );

    _verticalAnimation = Tween<double>(
      begin: _startY,
      end: _endY,
    ).animate(
      CurvedAnimation(
        parent: _controllerBall,
        curve: Curves.easeInOut,
      ),
    );

    _controllerBall.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controllerBall.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double heightOfContainer = 600;
    final double widthOfContainer = double.infinity;

    return Container(
      height: heightOfContainer,
      width: widthOfContainer,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          AnimatedBuilder(
            animation: _controllerBall,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  _verticalAnimation.value,
                  _horizontalAnimation.value,
                ),
                child: child!,
              );
            },
            child: const MyBall(),
          ),
        ],
      ),
    );
  }
}
