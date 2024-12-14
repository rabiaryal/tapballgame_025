


import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  final Offset barPosition;
  final Function onCollision;

  const MyBar({
    super.key,
    required this.barPosition,
    required this.onCollision,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 50),
      left: barPosition.dx,
      top: barPosition.dy,
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          // Call collision detection function when the bar moves
          onCollision();
        },
        child: Container(
          height: 20,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class MyBar extends StatelessWidget {
//   const MyBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 20,
//       width: 60,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         color: Colors.red,
//       ),
//     );
//   }
// }
