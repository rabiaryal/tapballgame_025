import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatefulWidget {
 
 
  const MyButton({super.key, required this.onTap, required this.label});


 final VoidCallback onTap;
  final String label;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  double circleSize = 70; // Initial size of the circle (diameter)
  double circleWidth = 70; // Initial width of the circle (same as diameter)
  Color myButtonColor = Colors.amber;
  Color tapIconColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    TextStyle buttonStyle =
        GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w700);

    final double height = 100;

    return GestureDetector(
      onTapDown: (details) {
       
        setState(() {
          if (circleSize < height) {
            circleSize = height; 
          }
          
            circleWidth = MediaQuery.of(context).size.width;
          if (circleWidth < MediaQuery.of(context).size.width) {
          }
        });
      },
      onTapUp: (details) {
        
        setState(() {
          circleSize = 70;
          circleWidth = 70;
        });
      },
      onTapCancel: () {
      
        setState(() {
          circleSize = 70;
          circleWidth = 70;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300), // Smooth transition
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: myButtonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: circleSize,
            width: circleWidth,
            decoration: BoxDecoration(
              color: tapIconColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
